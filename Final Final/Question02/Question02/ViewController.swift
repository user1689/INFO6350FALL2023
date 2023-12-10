//
//  ViewController.swift
//  Question02
//
//  Created by llc on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("SeattleTableViewCell", owner: self)?.first as! SeattleTableViewCell;
        cell.lblText.text = "Seattle\(indexPath.row + 1)";
        cell.imgView.image = UIImage(named: "Seattle\(indexPath.row + 1)");
        return cell;
    }
    

}

