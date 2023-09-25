//
//  ViewController.swift
//  CustomTableViewWithXIBExample
//
//  Created by llc on 2023/9/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["DimSum","FriedRice","Ramen","Salmon"]

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell", owner: self)?.first as! ImageTableViewCell
        
        cell.imgView?.image = UIImage(named: imageNames[indexPath.row])
        cell.lblView.text = imageNames[indexPath.row]
        
        return cell
    }
    
    

}

