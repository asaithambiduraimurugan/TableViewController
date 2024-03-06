//
//  MyTableViewController.swift
//  TableViewController
//
//  Created by mymac on 06/03/24.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var model: [(String,( () -> Void))] = [ ]
//        "One",
//    "two",
//    "three",
//    "four",
//    "five",
//    "One",
//    "two",
//    "three",
//    "four",
//    "five"]
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text  = model[indexPath.row].0
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        model[indexPath.row].1()
    }
  
}
