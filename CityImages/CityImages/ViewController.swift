//
//  ViewController.swift
//  CityImages
//
//  Created by llc on 2023/9/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "Seattle")
    }
    
    
    @IBAction func seattleImageHandler(_ sender: Any) {
        imageView.image = UIImage(named: "Seattle")
    }
    
    @IBAction func logAnglesImageHandler(_ sender: Any) {
        imageView.image = UIImage(named: "LosAngles")
    }
    
    
    @IBAction func austinImageHandler(_ sender: Any) {
        imageView.image = UIImage(named: "Austin")
    }
    
    @IBAction func newYorkImageHandler(_ sender: Any) {
        imageView.image = UIImage(named: "NewYork")
    }
    
    
    @IBAction func lasVegasImageHandler(_ sender: Any) {
        imageView.image = UIImage(named: "LasVegas")
    }
}

