//
//  ViewController.swift
//  Question04
//
//  Created by llc on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SendNameAndPhoneDelegate {
    
    var names: [String] = [];
    var phones: [String] = [];
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addAction(_ sender: Any) {
        performSegue(withIdentifier: "NameAndPhoneWithProtocolSegue", sender: self);
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
        cell.textLabel?.text = "name: \(names[indexPath.row]), phone: \(phones[indexPath.row])";
        return cell;
    }
    
    func sendNameAndPhone(name: String, phone: String) {
        self.names.append(name);
        self.phones.append(phone);
        self.tblView.reloadData();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NameAndPhoneWithProtocolSegue" {
            let secondVC = segue.destination as! NameAndPhoneWithProtocolViewController;
            secondVC.SendNameAndPhoneDelegate = self;
        }
    }
    
}

