//
//  SecondViewController.swift
//  Do It
//
//  Created by Wyz on 28/10/17.
//  Copyright © 2017 Wyz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        
        //create Task from outlet information
        let task = Task()
        task.name = taskTextField.text!
        task.important = importantSwitch.isOn
        
        
        // add new task to array in previous view controller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

    
  

}
