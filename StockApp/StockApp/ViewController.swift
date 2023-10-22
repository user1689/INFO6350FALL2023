//
//  ViewController.swift
//  StockApp
//
//  Created by llc on 2023/10/21.
//

import UIKit
import RealmSwift
import SwiftyJSON
import Alamofire
import SwiftSpinner

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var db = try! Realm()
    
    let stockNames = ["META", "TSLA", "GOOG"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stockNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = stockNames[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
     
     get stock value
     
     guard let stockSymbol = txtSymbol.text else {return}
     do {
         let stock = db.object(ofType: StockClass.self, forPrimaryKey: stockSymbol)
         print(stock)
     } catch let error as NSError {
         print(error.localizedDescription)
     }
     
     */
    
    /*
     
     send request
     
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
     
     */


}

