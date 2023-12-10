//
//  NameAndPhoneWithProtocolViewController.swift
//  Question04
//
//  Created by llc on 12/9/23.
//

import UIKit

class NameAndPhoneWithProtocolViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    var SendNameAndPhoneDelegate: SendNameAndPhoneDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNameAndPhoneAction(_ sender: Any) {
        guard let nameForMain = self.name?.text else {return;}
        guard let phoneForMain = self.phone?.text else {return;}
        SendNameAndPhoneDelegate?.sendNameAndPhone(name: nameForMain, phone: phoneForMain);
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
