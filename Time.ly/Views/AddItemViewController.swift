//
//  AddItemViewController.swift
//  Time.ly
//
//  Created by Kenneth Aguilar on 9/30/19.
//  Copyright © 2019 AWSStudent. All rights reserved.
//
import UIKit
import UserNotifications

class AddItemViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descTextField: UITextField!
    
    @IBOutlet weak var highPriorityBtn: UIButton!
    @IBOutlet weak var mediumPriorityBtn: UIButton!
    @IBOutlet weak var lowPriorityBtn: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    var userEmail : String = ""
    var trigger = Calendar.current.dateComponents(in: TimeZone.current, from: Date())
    
    
    var titleText : String = ""
    var descText : String = ""
    var priorityText : String = ""
    var date : String = ""
    var emailList = [String]()
    var components = DateComponents()
    var newComponents = DateComponents()
    
    //    var user : String = ""
    override func viewDidLoad() {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound, .badge])
        {
            (granted, error) in
        }
//        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in})
        //notif()
        super.viewDidLoad()
        setBtnShadow(btn: highPriorityBtn)
        setBtnShadow(btn: mediumPriorityBtn)
        setBtnShadow(btn: lowPriorityBtn)
        print("Hello user is \(userEmail)")
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //initializes our variables
    func setVariables(){
        if titleTextField.text!.isEmpty{
            titleText = "emtpy"
        }
        else{
            titleText = titleTextField.text!
        }
        if descTextField.text!.isEmpty{
            descText = "emtpy"
        }
        else{
            descText = titleTextField!.text!
        }
        
        if self.date == "" {
            var date = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = DateFormatter.Style.short
            dateFormatter.timeStyle = DateFormatter.Style.short
            
            //default date if not selected
            self.date = dateFormatter.string(from: date)
        }
    }
    
    //allows user to choose a priority level
    @IBAction func setPriorityItemBtn(_ sender: UIButton) {
        if sender.tag == 0 {
            priorityText = "High"
            invertColor(btn: highPriorityBtn, priority: "High")
            reset(btn: highPriorityBtn)
            
        }
        else if sender.tag == 1 {
            priorityText = "Medium"
            invertColor(btn: mediumPriorityBtn, priority: "Medium")
            reset(btn: mediumPriorityBtn)
            
        }
        else if sender.tag == 2{
            priorityText = "Low"
            invertColor(btn: lowPriorityBtn, priority: "Low")
            reset(btn: lowPriorityBtn)
        }
    }
    
    
    
    //custom button
    func setBtnShadow(btn : UIButton){
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        btn.layer.shadowOpacity = 3
        btn.layer.shadowRadius = 2.0
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = 10.0
    }
    //allow for visuals to determine which button is currently selected
    func invertColor(btn : UIButton, priority : String){
        btn.backgroundColor = UIColor.white
        if priority == "High"{
            btn.setTitleColor(.red, for: .normal)
        }
        else if priority == "Medium"{
            btn.setTitleColor(.orange, for: .normal)
        }
        else if priority == "Low"{
            btn.setTitleColor(.blue, for: .normal)
        }
        
    }
    //resets buttons when other button is selected for visual sense
    func reset(btn : UIButton){
        if btn.tag == 0{
            mediumPriorityBtn.setTitleColor(.white, for: .normal)
            lowPriorityBtn.setTitleColor(.white, for: .normal)
            mediumPriorityBtn.backgroundColor = UIColor.orange
            lowPriorityBtn.backgroundColor = UIColor.blue
            
        }
        if btn.tag == 1{
            highPriorityBtn.setTitleColor(.white, for: .normal)
            lowPriorityBtn.setTitleColor(.white, for: .normal)
            highPriorityBtn.backgroundColor = UIColor.red
            lowPriorityBtn.backgroundColor = UIColor.blue
        }
        
        if btn.tag == 2{
            highPriorityBtn.setTitleColor(.white, for: .normal)
            mediumPriorityBtn.setTitleColor(.white, for: .normal)
            highPriorityBtn.backgroundColor = UIColor.red
            mediumPriorityBtn.backgroundColor = UIColor.orange
        }
    }
    //passes user entered information to AWS DynamoDB through our lambda func
    @IBAction func addItemBtn(_ sender: Any) {
        
        if(titleTextField.text == "" || priorityText == ""){
            let alert = UIAlertController(title: "Invalid Action Item", message: "You are missing Title and/or priority", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        setVariables()
        parseEmails()
        
        if isEmailValid() || emailList[0] == "" {
            print("we in this bitch")
            if(emailList[0] == ""){
                emailList[0] = "empty"
                print("inside the email if")
            }
            expired()
            notif()
            print("emaillist size is \(emailList.count)")
            let identifier = UUID().uuidString
            var noteToPass:[String: String] = ["id": identifier, "title": titleText, "desc": descText, "priority": priorityText, "dueDate": date, "createdBy": userEmail, "people": emailList[0]]
            //Explicit GET
            if let urlToPass = URL(string: "https://cwkz97wm3b.execute-api.us-west-2.amazonaws.com/beta/additem") {
                var urlRequest = URLRequest(url: urlToPass, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 30)
                urlRequest.httpMethod = "POST"
                do{urlRequest.httpBody = try JSONSerialization.data(withJSONObject: noteToPass, options: JSONSerialization.WritingOptions())} catch{
                    print(error)
                }
                
                //urlRequest.allHTTPHeaderFields = ["X-RapidAPI-Host": "restcountries-v1.p.rapidapi.com", "X-RapidAPI-Key": "ddf00969d6msh66c55091085b512p179bbfjsn36f1a8a81ed6"]
                // https://restcountries-v1.p.rapidapi.com/all
                
                let taskWithRequest = URLSession.init(configuration: .default)
                taskWithRequest.dataTask(with: urlRequest) { (data, response, error) in
                    if let response = response {
                        // print(response)
                    }
                    if let data = data {
                        do {
                            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                            print(json)
                            
                        } catch {
                            print(error)
                        }
                    }
                    }.resume()
            }
        }
        else{
            let alert = UIAlertController(title: "Alert", message: "Invalid Email", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func datePickerChanged(_ sender: Any) {
        components = datePicker.calendar.dateComponents([.year, .month, .day, .hour, .minute], from: datePicker.date)
        newComponents = datePicker.calendar.dateComponents([.year, .month, .day], from: datePicker.date)
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        self.date = dateFormatter.string(from: datePicker.date)
    }
    
    func parseEmails(){
        var emailTemp : String = ""
        emailTemp = emailTextField.text ?? ""
        self.emailList = emailTemp.components(separatedBy: ", ")
        
    }
    
    func isEmailValid() -> Bool{
        //check for valid emails
        for i in self.emailList{
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            if (emailPred.evaluate(with: i)){
            }
            else{
                return false
            }
        }
        return true
    }
    
    func expired(){
        
        let content = UNMutableNotificationContent() //The notification's content
        content.title = "Your Time.ly item is due!"
        content.body = titleTextField.text ?? "Empty Title"
        content.sound = UNNotificationSound.default

        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
        let notificationReq = UNNotificationRequest(identifier: "identifier", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(notificationReq, withCompletionHandler: nil)
        
    }
    func notif(){

        let content = UNMutableNotificationContent()
        content.title = "Your Time.ly item is due!"
        content.body = titleTextField.text ?? "Empty Title"
        content.badge = 1
        newComponents.hour = 8
        newComponents.minute = 0
        var t = UNCalendarNotificationTrigger(dateMatching: newComponents, repeats: false)
        var r = UNNotificationRequest(identifier: "any", content: content, trigger: t)
        UNUserNotificationCenter.current().add(r, withCompletionHandler: nil)
        
        
    }
}
