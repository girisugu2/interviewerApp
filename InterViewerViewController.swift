//
//  InterViewerViewController.swift
//  interviewer
//
//  Created by Giritharan Sugumar on 6/30/17.
//  Copyright © 2017 giritharan. All rights reserved.
//

import UIKit

class InterViewerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var navigationButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationButton.target = revealViewController()
        navigationButton.action = #selector(SWRevealViewController.revealToggle(_:))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "interviewerCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! InterviewerTableViewCell
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
