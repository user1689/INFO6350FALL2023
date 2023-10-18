//
//  StockClass.swift
//  LocalDBUsingRealm
//
//  Created by llc on 2023/10/17.
//

import Foundation
import RealmSwift

class StockClass: Object {
    @objc dynamic var symbol: String = ""
    @objc dynamic var price: Float = 0.0
    @objc dynamic var companyName: String = ""
    @objc dynamic var desc: String = ""
    
    override static func primaryKey() -> String? {
        return "symbol"
    }
}
