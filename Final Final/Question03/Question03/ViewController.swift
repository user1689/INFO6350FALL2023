//
//  ViewController.swift
//  Question03
//
//  Created by llc on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var names: [String] = [];
    var phones: [String] = [];
    var nameTxtField: UITextField?
    var phoneTxtField: UITextField?

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
        cell.textLabel?.text = "name: \(names[indexPath.row]), phone: \(phones[indexPath.row])";
        return cell;
    }

    
    
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Name and Phone number", message: "", preferredStyle: .alert);
        let okButton = UIAlertAction(title: "OK", style: .default) {_ in
            guard let name = self.nameTxtField?.text else {return};
            self.names.append(name);
            guard let phone = self.phoneTxtField?.text else {return};
            self.phones.append(phone);
            self.tblView.reloadData();
        }
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) {_ in
            print("cancelled");
        }
        alertController.addAction(okButton);
        alertController.addAction(cancelButton)
        alertController.addTextField{ txtField in
            txtField.placeholder = "Type Name";
            self.nameTxtField = txtField;
        }
        alertController.addTextField{ txtField in
            txtField.placeholder = "Type phoneNumber";
            self.phoneTxtField = txtField;
        }
        self.present(alertController, animated: true);
    }
    
}

