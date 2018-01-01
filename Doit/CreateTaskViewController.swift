//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by den on 01/01/2018.
//  Copyright © 2018 den. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
  
  @IBOutlet weak var taskNameTextField: UITextField!
  @IBOutlet weak var importantSwitch: UISwitch!
  
  var previousVC = ViewController()
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


  @IBAction func addTapped(_ sender: Any) {
    let task = Task()
     task.name = taskNameTextField.text!
     task.important = importantSwitch.isOn
     previousVC.tasks.append(task)
     previousVC.taskList.reloadData()
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
