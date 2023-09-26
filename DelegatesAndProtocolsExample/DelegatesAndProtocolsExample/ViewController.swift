//
//  ViewController.swift
//  DelegatesAndProtocolsExample
//
//  Created by llc on 2023/9/25.
//

import UIKit

class ViewController: UIViewController, SendNameDelegate {
    
    /*
        
        step1: create a fila with name `SendNameDelegate` which will have protocol
        step2: write own protocol
        step3: in the firstVC conform to the protocol declared in the step1
        step4: add the cuntion stub in the firstVC
        step5: In the prepare for segue function of the firstVC, add self as the delegate so that whenever the secondVC calls the function it will handle it
        step6: when the secondVC raises the delegate function then the firstVC will receivce it
     
     */

    @IBOutlet weak var lblFirstVC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "secondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secondVC") {
            let secondVC = segue.destination as! SecondUIViewController
            secondVC.sendNameDelegate = self
        }
    }
    
    func sendName(name: String) {
        // print("Name = \(name)")
        lblFirstVC.text = "Value sent from the secondVC = \(name)"
    }


}

