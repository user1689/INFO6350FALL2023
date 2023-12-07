//
//  ToDoClass.swift
//  ToDoApp
//
//  Created by llc on 11/27/23.
//

import Foundation
import RealmSwift

class ToDoClass: Object {
    @Persisted(primaryKey: true) var todo: String = "";
    
}
