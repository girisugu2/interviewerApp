//
//  StatusViewController.swift
//  interviewer
//
//  Created by Giritharan Sugumar on 7/4/17.
//  Copyright © 2017 giritharan. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
        return 10
        } else {
            return 10
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        if indexPath.section == 0 {
//        let ongoingIdentifier = "statusCell1"
//   
//        let ongoingCell = tableView.dequeueReusableCell(withIdentifier: ongoingIdentifier, for: indexPath) as! OngoingTableViewCell
//            
//            ongoingCell.ongoingFields.text = "kk"
//            return ongoingCell
//        } else {
          let finishedIdentifier = "statusCell2"
          let finishedCell = tableView.dequeueReusableCell(withIdentifier: finishedIdentifier, for: indexPath) as! FinishedTableViewCell
            finishedCell.finishedFields.text = "pp"
            return finishedCell
       // }
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
