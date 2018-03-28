//
//  HistoryVC.swift
//  Calculator1
//
//  Created by chayarak on 26/3/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

class HistoryVC: UIViewController {
    
    @IBOutlet weak var tableHistory: UITableView!
    var listItem:DataListItem!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension HistoryVC: UITableViewDataSource, UITableViewDelegate{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return listItem.listOfHistory.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let listItemOfHistory = listItem.listOfHistory[indexPath.row]
        let historyOfResult = listItemOfHistory.leftNumber + listItemOfHistory.operatorType + listItemOfHistory.rightNumber + " = " + listItemOfHistory.result
        cell.textLabel?.text = historyOfResult
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (rowAction: UITableViewRowAction, indexPath: IndexPath) -> Void in
            self.listItem.listOfHistory.remove(at: indexPath.row)
            self.tableHistory.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            self.tableHistory.reloadData()
        }
        return [delete]
    }
}
