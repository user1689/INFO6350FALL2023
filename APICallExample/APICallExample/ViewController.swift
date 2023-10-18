//
//  ViewController.swift
//  APICallExample
//
//  Created by llc on 2023/10/17.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    
    @IBOutlet weak var txtSymbol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func getStockAction2(_ sender: Any) {
        
        guard let stockSymbol = txtSymbol.text else {return}
        
        let url = "\(baseURL)/profile/\(stockSymbol)?apikey=\(apiKey)"
        
        AF
            .request(url)
            .responseJSON { (response) in
                if (response.error != nil) {
                    print(response.error?.localizedDescription)
                    return
                }
                guard let rawData = response.data else {return}
                guard let jsonArray = JSON(rawData).array else {return}
                guard let stock = jsonArray.first else {return}
                
                let symbol = stock["symbol"].stringValue
                let price = stock["price"].floatValue
                let companyName = stock["companyName"].stringValue
                let description = stock["description"].stringValue
                
                print(symbol)
                print(price)
                print(companyName)
                print(description)
            }
        
    }
 
    
}

