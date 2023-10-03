//
//  ViewController.swift
//  AlertControllerExample
//
//  Created by llc on 2023/10/3.
//

import UIKit

class ViewController: UIViewController {
    
    /*
     
        How to get input value from alert input text field?
        
        step1: Assgin input value to global variable
        step2: After click ok, now self points to Okbutton, handle inside the closure of okButton
     
     */
    
    var txtField: UITextField?
    
    @IBOutlet weak var lblAlert: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlertAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Sample Alert Controller", message: "Simple Message", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (action) in
            self.lblAlert.text = self.txtField?.text
            print("OK Button Press")
        }
        let cancelButton = UIAlertAction(title: "Cancel", style: .default) { (action) in
            print("Cancel Button Press")
        }
        alertController.addAction(okButton)
        alertController.addAction(cancelButton)
        alertController.title = "How are you?"
        alertController.addTextField { (txtField) in
            txtField.placeholder = "Type someting here"
            self.txtField = txtField
        }
        self.present(alertController, animated: true) {
            print("Done")
        }
    }
    
}

