//
//  TaskViewController.swift
//  Doit
//
//  Created by den on 01/01/2018.
//  Copyright © 2018 den. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate {


  
  @IBOutlet weak var taskList: UITableView!
  var tasks: [Task] = []
  var selectedIndex = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tasks = makeTasks()
    print("Tasks: \(tasks)")

    taskList.dataSource = self
    taskList.delegate = self
    // Do any additional setup after loading the view, typically from a nib.
     }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tasks.count;
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
      
    let task = tasks[indexPath.row]
    selectedIndex = indexPath.row
    if task.important {
      cell.textLabel?.text = "❗️\(task.name)"
    } else {
      cell.textLabel?.text = task.name
    }
   
    return cell
    
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let task = tasks[indexPath.row]
    performSegue(withIdentifier: "selectTaskSegue", sender: task)
  }
  
  func makeTasks() -> [Task] {
    let task1 = Task()
    task1.name = "Walk the dog"
    task1.important = false
    
    let task2 = Task()
    task2.name = "To buy cheese"
    task2.important = true
    
    let task3 = Task()
    task3.name = "Call mom"
    task3.important = true
   
    return [task1, task2, task3]
    
  }
  
  @IBAction func addTask(_ sender: Any?) {
    performSegue(withIdentifier: "addTaskSegue", sender: nil)
  }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "addTaskSegue" {
      let nextVC = segue.destination as! CreateTaskViewController
      nextVC.previousVC = self
    }
    if segue.identifier == "selectTaskSegue" {
      let nextVC = segue.destination as! CompleateTaskViewController
      nextVC.task = sender as! Task
      nextVC.previousVC = self
    }
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

