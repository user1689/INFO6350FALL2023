//
//  SecondViewController.swift
//  SegueWithCodeExample
//
//  Created by llc on 2023/9/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name = ""
    
    @IBOutlet weak var txtWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtWelcome.text = name
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

}
