//
//  ViewController.swift
//  Topic03
//
//  Created by llc on 12/7/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SendNamePhoneNumberDelegate {
    
    var names: [String] = [];
    var phones: [String] = [];
    

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addNameAndPhoneNumber(_ sender: Any) {
        performSegue(withIdentifier: "segueNameAndPhoneNumber", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
        cell.textLabel?.text = "Name: \(names[indexPath.row]), Phone: \(names[indexPath.row])";
        return cell;
    }
    
    
    func sendNameAndPhoneNumber(name: String, phoneNumber: String) {
        self.names.append(name);
        self.phones.append(phoneNumber);
        tblView.reloadData();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNameAndPhoneNumber" {
            let secondVC = segue.destination as! NamePhoneViewController;
            secondVC.sendNamePhoneNumberDelegate = self;
        }
    }
}

