//
//  NamePhoneViewController.swift
//  Topic03
//
//  Created by llc on 12/7/23.
//

import UIKit

class NamePhoneViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var name: UITextField!
    
    var sendNamePhoneNumberDelegate: SendNamePhoneNumberDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveNameAndPhoneNumber(_ sender: Any) {
        guard let name = self.name.text else {return;}
        guard let phone = self.phoneNumber.text else {return;}
        sendNamePhoneNumberDelegate?.sendNameAndPhoneNumber(name: name, phoneNumber: phone);
        self.navigationController?.popViewController(animated: true);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
