//
//  ViewController.swift
//  TableViewControllerExample
//
//  Created by llc on 2023/9/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // UITableViewDelegate: anything changes in the table, eg: data, actions
    // UITableViewDataSource: figure out where is datasource
    
    let names = ["Sam", "Leo", "Santoshi", "Roger"]
    
    @IBOutlet weak var UITableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // method01
        // UITableView.delegate = self
        // UITableView.dataSource = self
        
        // method02
        // control + drag table view in Main.storyboard to `ViewController` and then check delegate and dataSource
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell;
    }


}

