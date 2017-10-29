//
//  DeletionViewController.swift
//  Do It
//
//  Created by Wyz on 29/10/17.
//  Copyright © 2017 Wyz. All rights reserved.
//

import UIKit

class DeletionViewController: UIViewController {

    @IBOutlet weak var deletableTask: UILabel!
    var tasktobeDeleted = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        deletableTask.text = tasktobeDeleted

        // Do any additional setup after loading the view.
    }
    @IBAction func taskDone(_ sender: Any) {
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
