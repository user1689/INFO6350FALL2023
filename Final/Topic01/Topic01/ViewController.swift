//
//  ViewController.swift
//  Topic01
//
//  Created by llc on 12/6/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    let names = ["tree", "gift", "lamp"];
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("HolidayTableViewCell", owner: self)?.first as! HolidayTableViewCell;
        cell.imgView?.image = UIImage(named: names[indexPath.row]);
        cell.lblText.text = names[indexPath.row];
        return cell;
    }

}

