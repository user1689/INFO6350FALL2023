//
//  ViewController.swift
//  Question01
//
//  Created by llc on 12/9/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var weather: [String] = [];
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weather.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
        cell.textLabel?.text = weather[indexPath.row];
        return cell;
    }

    @IBAction func getWeatherAction(_ sender: Any) {
        SwiftSpinner.show("Loading");
        let url = "\(baseURL)"
        
        AF.request(url).response { ( response ) in

            if (response.error != nil) {
                print(response.error?.localizedDescription)
                return
            }

            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            
            self.weather = [];
            for e in jsonArray {
                let text = "city: \(e["city"]), cityCode: \(e["cityCode"]), conditions: \(e["conditions"]), temperature: \(e["temperature"])";
                self.weather.append(text);
            }
            
            SwiftSpinner.hide();
            self.tblView.reloadData();
        }
    }
    
}

