//
//  WordTableViewController.swift
//  tableViewPort
//
//  Created by Kumar Shubham on 31/01/21.
//

import Foundation
import UIKit

class WordTableViewController : UIViewController, UITableViewDelegate{
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        setupTableView()
    }
    
    func setupTableView(){
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints                     = false
        setupTableViewConstraints()
    }
    
    func setupTableViewConstraints(){
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive        = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive      = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive  = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive    = true
    }
    
}
