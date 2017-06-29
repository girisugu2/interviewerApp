//
//  RegisterViewController.swift
//  interviewer
//
//  Created by Giritharan Sugumar on 6/26/17.
//  Copyright © 2017 giritharan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    var companyFields = ["Company Name", "Company Website", "Company Phone Number", "Company Location", "Create Admin", "Create Password"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyFields.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RegisterTableViewCell
        
        cell.lbl?.text = companyFields[indexPath.row]
       
        if indexPath.row == 0 {
        cell.textFields.keyboardType = .default
        cell.textFields.autocapitalizationType = .words
        cell.textFields.spellCheckingType = .no
            
        } else if indexPath.row == 1 {
            cell.textFields.keyboardType = .URL
        } else if indexPath.row == 2 {
            cell.textFields.keyboardType = .phonePad
        } else if indexPath.row == 5 {
            cell.textFields.isSecureTextEntry = true
        }
        
       tableView.tableFooterView = UIView(frame: .zero)
        
        return cell
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
