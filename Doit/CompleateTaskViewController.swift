//
//  CompleateTaskViewController.swift
//  Doit
//
//  Created by den on 02/01/2018.
//  Copyright © 2018 den. All rights reserved.
//

import UIKit

class CompleateTaskViewController: UIViewController {
    var task = Task()
    var previousVC = TaskViewController()

  
  @IBOutlet weak var taskLabel: UILabel!

  
    override func viewDidLoad() {
        super.viewDidLoad()
        taskLabel.text? = task.important ? "❗️\(task.name)" : task.name
      
        // Do any additional setup after loading the view.
    }

  @IBAction func completeTapped(_ sender: Any) {
    previousVC.tasks.remove(at: previousVC.selectedIndex)
    previousVC.taskList.reloadData()
    navigationController!.popViewController(animated: true)
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
