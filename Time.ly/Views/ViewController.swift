//
//  ViewController.swift
//  Time.ly
//
//  Created by Lorena Macias on 9/30/19.
//  Copyright © 2019 AWSStudent. All rights reserved.
import UIKit
import AWSMobileClient
import AWSAppSync
import AWSUserPoolsSignIn

class ViewController: UIViewController {


    var notesArray : [[String: Any]] = []
    var lowArray : [[String: Any]] = []
    var midArray : [[String: Any]] = []
    var email : String = ""
    var emailToSend : String = ""

    typealias FinishedDownload = () -> ()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addItemUIBTN: UIButton!

    override func viewDidLoad() {
        notesArray = []
        super.viewDidLoad()
        notesArray = []
        self.userSignIn()
        self.setUser(completion: {(email) in
            self.emailToSend = self.email
            print("email is " + self.emailToSend)
        })
        self.setItem()
        self.tableView.register(UINib(nibName: "CustomCellTableViewCell", bundle: .main
        ), forCellReuseIdentifier: "CustomCellTableViewCell")
        btnUI(btn: addItemUIBTN)
    }
    //customizes button
    func btnUI(btn : UIButton){
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = addItemUIBTN.frame.width / 2
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        btn.layer.shadowRadius = 6.0
        btn.layer.shadowOpacity = 0.5
    }
    //customizes boilerplate Cognito login
    func setCustomUI(){
        AWSMobileClient.default()
            .showSignIn(navigationController: self.navigationController!,
                        signInUIOptions: SignInUIOptions(
                            canCancel: false,
                            logoImage: UIImage(named: "timelyLogo"),
                            backgroundColor: UIColor(red:0.00, green:0.50, blue:0.50, alpha:1.0))) { (result, err) in
        }
    }
    //handles issue of email being setting to Nil
    func setUser(completion : @escaping(_ EMAIL : String ) -> Void){
        AWSMobileClient.sharedInstance().getTokens{ (tokens, error) in
            if let error = error { print(error.localizedDescription)}
            if let tokens = tokens {
                self.email = tokens.idToken?.claims?["email"] as! String
                completion(self.email)
            }
        }
    }
    //handles user sign in and authentication
    func userSignIn(){
        AWSMobileClient.default().initialize { (userState, error) in
            if let userState = userState {
                switch(userState){
                case .signedIn:
                    DispatchQueue.main.async {
                        print("User already signed in")
                    }
                case .signedOut:
                    self.setCustomUI()
                    AWSMobileClient.default().showSignIn(navigationController: self.navigationController!, { (userState, error) in
                        if(error == nil){       //Successful signin
                            self.setUser(completion: {(email) in
                                self.emailToSend = self.email
                                print("email is " + self.emailToSend)
                            })

                            DispatchQueue.main.async {
                                print("User signed in")
                                self.setItem()
                                self.tableView.register(UINib(nibName: "CustomCellTableViewCell", bundle: .main
                                ), forCellReuseIdentifier: "CustomCellTableViewCell")
                            }
                        }
                    })
                default:
                    AWSMobileClient.default().signOut()
                }

            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    //allows us to send data to our other VC, passing email
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is AddItemViewController
        {
            let vc = segue.destination as? AddItemViewController
            self.setUser(completion: {(email) in

                vc?.userEmail = self.email
            })
        }
    }

    @IBAction func signOutBtn(_ sender: Any) {
        AWSMobileClient.sharedInstance().signOut()
        self.userSignIn()
    }
    //reads from AWS DynamoDB to store user information in dict
    func setItem(){
        //Explicit GET
        self.setUser(completion: {(email) in
            self.emailToSend = self.email
            var emailDict : [String : String] =  ["email" : self.emailToSend]

            if let urlToPass = URL(string: "https://cwkz97wm3b.execute-api.us-west-2.amazonaws.com/beta/getusernotes") {
                var urlRequest = URLRequest(url: urlToPass, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 30)
                urlRequest.httpMethod = "GET"
                do {
                    urlRequest.httpBody = try JSONSerialization.data(withJSONObject: emailDict, options: JSONSerialization.WritingOptions())
                }
                catch {
                    print(error)
                }

                let taskWithRequest = URLSession.init(configuration: .default)
                taskWithRequest.dataTask(with: urlRequest) { (data, response, error) in
                    if let response = response {
                        print(response)
                    }
                    if let data = data {
                        do {
                            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments )
                            print(json)
                            self.notesArray = json as! [[String : Any]]

                            var temp : [[String: Any]] = []

                            for ar in self.notesArray{
                                if (ar["priority"] as? String == "Medium"){
                                    self.midArray.append(ar)
                                }
                                else if (ar["priority"] as? String == "Low"){
                                    self.lowArray.append(ar)
                                }
                                else{
                                    temp.append(ar)
                                }
                            }
                            self.notesArray = []
                            self.notesArray = temp + self.midArray + self.lowArray
                            self.midArray = []
                            self.lowArray = []

                            DispatchQueue.main.async  {
                                self.tableView.reloadData()
                            }
                            print(json)
                        } catch {
                            print(error)
                        }
                    }
                    }.resume()
            }
        })
    }
}
//custome Table View and Cells to display data from AWS DynamoDB
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableViewCell", for: indexPath) as! CustomCellTableViewCell
        // print("Size is \(self.notesArray.count)")
        cell.titleLabelCell.text = notesArray[indexPath.row]["title"] as? String

        cell.descLabelCell.text = notesArray[indexPath.row]["desc"] as? String

        cell.priorityLabelCell.text = notesArray[indexPath.row]["priority"] as? String
        cell.dateLabelCell.text = notesArray[indexPath.row]["dueDate"] as? String
        cell.priorityLabelCell.isHidden = false
        if cell.descLabelCell.text == "emtpy"{
            cell.descLabelCell.text = ""
        }
        if cell.priorityLabelCell.text == "High"{
            cell.priorityLabelCell.backgroundColor = UIColor.red
            cell.priorityLabelCell.text = ""
        }
        else if cell.priorityLabelCell.text == "Medium"{
            cell.priorityLabelCell.backgroundColor = UIColor.orange
            cell.priorityLabelCell.text = ""

        }
        else if cell.priorityLabelCell.text == "Low"{
            cell.priorityLabelCell.backgroundColor = UIColor.blue
            cell.priorityLabelCell.text = ""
        }
        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {

            //Handle delete
            let cell =  tableView.cellForRow(at: indexPath)
            var currentData = notesArray[indexPath.row]
            print("Current Data: \(currentData)")

            notesArray.remove(at: indexPath.row)


            guard let deleteID = currentData["id"] as? String else{return}
            self.deleteNoteAPICall(noteId: deleteID)
            DispatchQueue.main.async {
                tableView.reloadData()
            }


            //Send note and key to lambda and delete from db
            //Delete cell from the uitableview
        }
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 129.5
    }
}

extension ViewController { //Networking


    func deleteNoteAPICall(noteId: String) {

        if let urlToPass = URL(string: "https://cwkz97wm3b.execute-api.us-west-2.amazonaws.com/beta/delete-note") {
            var urlRequest = URLRequest(url: urlToPass, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 30)
            urlRequest.httpMethod = "POST"

            urlRequest.httpBody = noteId.data(using: .utf8);
                //JSONSerialization.data(withJSONObject: emailDict, options: JSONSerialization.WritingOptions())

            let taskWithRequest = URLSession.init(configuration: .default)
            taskWithRequest.dataTask(with: urlRequest) { (data, response, error) in
                if let response = response {
                    print(response)
                }
                if let data = data {
                    do {
                        print("Success")
                        //let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments )

                        //DispatchQueue.main.async  {
                        //    self.tableView.reloadData()
                        //}
                       // print(json)
                    } catch {
                        print(error)
                    }
                }
                }.resume()
        }
    }
}
