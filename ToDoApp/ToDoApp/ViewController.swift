//
//  ViewController.swift
//  ToDoApp
//
//  Created by llc on 11/27/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arr = ["jack","sam"]
    
    var todos: [ToDoClass] = [ToDoClass]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = todos[indexPath.row].todo
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getDataFromDB()
    }
    
    @IBOutlet weak var tblView: UITableView!
    
    lazy var db = try! Realm()
    
    func getDataFromDB() {
        do {
            let todosDB = db.objects(ToDoClass.self)
            print(todosDB)
            todos = [ToDoClass]()
            for todo in todosDB {
                todos.append(todo)
            }
            tblView.reloadData()
        } catch let error as NSError {
            print("Error in writing to Realm DB: \(error.localizedDescription)")
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteDataFromDB(self.todos[indexPath.row])
            todos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func deleteDataFromDB(_ todo: ToDoClass) {
        do {
            try db.write{
                db.delete(todo)
            }
        } catch let error as NSError {
            print("Error in writing to Realm DB: \(error.localizedDescription)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

