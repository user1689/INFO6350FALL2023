//
//  AddStockViewController.swift
//  StockApp
//
//  Created by llc on 2023/10/21.
//

import UIKit
import Alamofire
import SwiftyJSON

class AddStockViewController: UIViewController {

    
    @IBOutlet weak var txtLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func addStockAction(_ sender: Any) {
        guard let stockSymbol = txtLabel.text else { return }

        let url = "\(baseURL)/profile/\(stockSymbol)?apikey=\(apiKey)"

        AF.request(url).response { ( response ) in

            if (response.error != nil) {
                print(response.error?.localizedDescription)
                return
            }

            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else { return }

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

