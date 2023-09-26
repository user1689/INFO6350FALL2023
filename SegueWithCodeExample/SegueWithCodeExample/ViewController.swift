//
//  ViewController.swift
//  SegueWithCodeExample
//
//  Created by llc on 2023/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    /*
        Q: sometimes, button will be distabled
        How to create segue from entire view controller?
        step1: select view controller in the top of screen in Main.storyboard
        step2: press on `control` and drag to the second screen, then check show
        step3: click segue between two screens and fill out `Identifier`
        
        How to create a hello page?
        step4: add navigation controller to the first screen from `Editor` in menu
        step5: create UIViewController file and link the second screen to it
        step6: create label variable to the second `UIViewController` file
        step7: create a input in the first screen
        step8: create a input variable to the first `UIViewController` file
        
        step9: create name vairable in the second `UIViewController` file
        step10: override prepare function in the first `UIViewController` file
     
     
     */

    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondViewController(_ sender: Any) {
        performSegue(withIdentifier: "secondScreenViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secondScreenViewController") {
            // print("gotcha!")
            let secondVC = segue.destination as! SecondViewController
            // method1 
            // secondVC.name = txtName.text ?? "user1689"
            guard let name = txtName.text else {return}
            secondVC.name = name
        }
    }
    
}

