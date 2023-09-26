//
//  SecondUIViewController.swift
//  DelegatesAndProtocolsExample
//
//  Created by llc on 2023/9/25.
//

import UIKit

class SecondUIViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    var sendNameDelegate: SendNameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sendNameToFirstVC(_ sender: Any) {
        guard let name = txtName.text else {return}
        sendNameDelegate?.sendName(name: name)
        self.navigationController?.popViewController(animated: true)
    }
}
