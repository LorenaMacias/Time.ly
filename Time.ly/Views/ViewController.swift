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
    var user : String = ""

    typealias FinishedDownload = () -> ()

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var addItemUIBTN: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            self.userSignIn()
            self.setItem(completion: {(notesArray) in
                print("Hello the count is \(notesArray.count)")
            } )
            self.tableView.register(UINib(nibName: "CustomCellTableViewCell", bundle: .main
            ), forCellReuseIdentifier: "CustomCellTableViewCell")
            btnUI(btn: addItemUIBTN)
        let sendValue = AddItemViewController();
      
        

    }
    func btnUI(btn : UIButton){
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = addItemUIBTN.frame.width / 2
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        btn.layer.shadowRadius = 6.0
        btn.layer.shadowOpacity = 0.5
    }
    func setCustomUI(){
        AWSMobileClient.default()
            .showSignIn(navigationController: self.navigationController!,
                        signInUIOptions: SignInUIOptions(
                            canCancel: false,
                            logoImage: UIImage(named: "timelyLogo"),
                            backgroundColor: UIColor(red:0.00, green:0.50, blue:0.50, alpha:1.0))) { (result, err) in
        }
    }
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
                            DispatchQueue.main.async {
                                print("User signed in")
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
    func getUser() -> String{
        //to check if user is logged in with Cognito... not sure if this is necessary
        var user = ((AWSCognitoUserPoolsSignInProvider.sharedInstance()
            .getUserPool()
            .currentUser()?
            .username)!)
        print("username is:  \(user)")
        
        return user
    }
    
    
    @IBAction func signOutBtn(_ sender: Any) {
        AWSMobileClient.sharedInstance().signOut()
        self.userSignIn()

    }

func setItem(completion : @escaping(_ nameArray : [[String: Any]] ) -> Void ){
        //Explicit GET
        if let urlToPass = URL(string: "https://cwkz97wm3b.execute-api.us-west-2.amazonaws.com/beta/all") {
        var urlRequest = URLRequest(url: urlToPass, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 30)
        urlRequest.httpMethod = "GET"


        let taskWithRequest = URLSession.init(configuration: .default)
        taskWithRequest.dataTask(with: urlRequest) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments )

                    DispatchQueue.main.async{
                        self.notesArray = json as! [[String : Any]]
                        completion(self.notesArray)
                        print("the size es \(self.notesArray.count)")
                    }
//                    notesArray[0]["title"] as! String

                    print(json)

                } catch {
                    print(error)
                }
            }
            }.resume()
    }
}

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var size : Int = 2
        self.setItem(completion: {(notesArray) in
            size = notesArray.count
        } )

        return 2

}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableViewCell", for: indexPath) as! CustomCellTableViewCell
        self.setItem(completion: {(notesArray) in
//            print("Size is \(self.notesArray.count)")
            cell.titleLabelCell.text = notesArray[indexPath.row]["title"] as! String
            cell.descLabelCell.text = notesArray[indexPath.row]["desc"] as! String
            cell.priorityLabelCell.text = notesArray[indexPath.row]["priority"] as! String
            cell.dateLabelCell.text = notesArray[indexPath.row]["dueDate"] as! String
            cell.priorityLabelCell.isHidden = false


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
        } )
        return cell
    }

}


extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 129.5
    }
}
