//
//  ViewController.swift
//  tasks-app
//
//  Created by Muhammad Elsaied on 6/13/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet var TableView : UITableView!
    
    var tasks = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        // set task title
        self.title = "Tasks"
        
        //set uo default user values
        if !UserDefaults().bool(forKey: "setup"){
            UserDefaults().set(true,forKey:"setup")
            UserDefaults().set(0,forKey: "count") 
        }
        updateTasks()
        
        
    }
    func updateTasks(){
        tasks.removeAll()
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        for task_count in 0..<count {
            if let task = UserDefaults().value(forKey: "task_\(task_count)") as? String {
                tasks.append(task)
            }
        }
        TableView.reloadData()
    }
    
    @IBAction func didtappedAdded() {
        let VC = storyboard?.instantiateViewController(identifier: "entery") as! EnteryVC
        VC.title = "New Task"
        VC.update = {
            DispatchQueue.main.async {
                self.updateTasks()
            }
        }
        navigationController?.pushViewController(VC, animated: true)
    }


}

extension MainVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let VC = storyboard?.instantiateViewController(identifier: "task") as! TaskVC
             VC.title = "Edit Task"
        VC.task = tasks[indexPath.row]
             navigationController?.pushViewController(VC, animated: true)
        
    }
}
extension MainVC : UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task
        return cell
    }
}


