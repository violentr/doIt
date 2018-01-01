//
//  ViewController.swift
//  Doit
//
//  Created by den on 01/01/2018.
//  Copyright © 2018 den. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate {

  @IBOutlet weak var taskList: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    taskList.dataSource = self
    taskList.delegate = self
    // Do any additional setup after loading the view, typically from a nib.
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10;
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "hello"
    return cell
    
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

