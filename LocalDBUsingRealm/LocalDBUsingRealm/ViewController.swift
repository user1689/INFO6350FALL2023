//
//  ViewController.swift
//  LocalDBUsingRealm
//
//  Created by llc on 2023/10/17.
//

import UIKit
import RealmSwift
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {

    @IBOutlet weak var txtSymbol: UITextField!
    
    lazy var db = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func getStockValue(_ sender: Any) {
        guard let stockSymbol = txtSymbol.text else {return}
        do {
            let stock = db.object(ofType: StockClass.self, forPrimaryKey: stockSymbol)
            print(stock)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    

    @IBAction func getStockAction(_ sender: Any) {
        guard let stockSymbol = txtSymbol.text else {return}
        let url = "\(baseURL)/profile/\(stockSymbol)?apikey=\(apiKey)"
        AF.request(url).responseJSON { (response) in
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
            let stockClass = StockClass()
            stockClass.symbol = symbol
            stockClass.price = price
            stockClass.companyName = companyName
            stockClass.desc = description
            self.addStockToDB(stockClass)
            
        }
    }
    
    func addStockToDB(_ stock : StockClass){
            do{
                print( db.configuration.fileURL)
                try db.write{
                    db.add(stock, update: .modified)
                }
            }catch let error as NSError{
                print("Error in writing to Realm DB: \(error.localizedDescription)")
            }
        }
}

