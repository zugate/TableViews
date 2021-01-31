//
//  WordTableViewController.swift
//  tableViewPort
//
//  Created by Kumar Shubham on 31/01/21.
//

import Foundation
import UIKit

class WordTableViewController : UIViewController, UITableViewDelegate{
    
    let tableView   = UITableView()
    var safeArea    : UILayoutGuide!
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor(red: 0.75, green: 0.01, blue: 0.18, alpha: 1.00) //lipstick red
        setupTableView()
    }
    
    func setupTableView(){
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints                     = false
        safeArea = view.layoutMarginsGuide
        setupTableViewConstraints()
    }
    
    func setupTableViewConstraints(){
        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive        = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive          = true
        tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive  = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive        = true
    }
    
}
