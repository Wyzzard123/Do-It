//
//  TasksViewController.swift
//  Do It
//
//  Created by Wyz on 28/10/17.
//  Copyright © 2017 Wyz. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var tasks : [Task] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self //have to do makeTasks earlier cos it'll look for stuff immediately so it looks for stuff on top of this
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell() //this is just an object
        let task = tasks[indexPath.row]
        if task.important == true {
            cell.textLabel?.text = "❗\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        
        return cell
        
    }
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Do homework"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Mow the lawn"
        task3.important = false
        
        return [task1, task2, task3]
        
    
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "moveSegue", sender: nil)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = tasks[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "deleteSegue", sender: nil)
      
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: task.name) {
        var deleteVC = segue.destination as! DeletionViewController
        deleteVC.tasktobeDeleted = sender as! String
        var nextVC = segue.destination as! SecondViewController //saving the destination in nextVC
        nextVC.previousVC = self //self = class you're in now

        
    }

    
        
    

}

