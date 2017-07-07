//
//  AddInterviewerViewController.swift
//  interviewer
//
//  Created by Giritharan Sugumar on 7/4/17.
//  Copyright © 2017 giritharan. All rights reserved.
//

import UIKit

class AddInterviewerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let interviewerFields = ["Name", "Email", "Designation", "Assigned For", "Phone"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interviewerFields.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "AddInterviewer"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! AddInterviewerTableViewCell
        cell.label.text = interviewerFields[indexPath.row]
        return cell
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
