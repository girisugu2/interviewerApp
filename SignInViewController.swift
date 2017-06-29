//
//  ViewController.swift
//  interviewer
//
//  Created by Giritharan Sugumar on 6/26/17.
//  Copyright © 2017 giritharan. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additionl setup after loading the view, typically from a nib.
        setUpUI()
    }

    func setUpUI() {
        
        emailTextField.layer.cornerRadius = 2.0
        passwordTextField.layer.cornerRadius = 2.0
        emailTextField.layer.borderColor = (UIColor.darkGray).cgColor
        passwordTextField.layer.borderColor = (UIColor.darkGray).cgColor
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Action Methods
    
    @IBAction func signInButton(_ sender: Any) {
       let email = emailTextField.text
       let password = passwordTextField.text
        
        if ((email?.isEmpty)! || (password?.isEmpty)!) {
            alertMessage(message: "Enter the Fields")
        }
        
        if ((password?.characters.count)! < 8) {
            alertMessage(message: "password must contain minimum 8 letters")
        
        }
        
    }
    
    //Private Methods 
    
    func alertMessage(message:String) {
        let  myAlert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert)

        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        present(myAlert, animated:true, completion:nil);
    
    }
    
    
    func alert(names:String) {
        let myalert = UIAlertController(title: "Alert", message: names, preferredStyle: UIAlertControllerStyle.alert)
        
        let action = UIAlertAction(title: "Done", style: UIAlertActionStyle.cancel, handler: nil)
        myalert.addAction(action)
        present(myalert, animated: true, completion: nil)
        
        
    }
}

