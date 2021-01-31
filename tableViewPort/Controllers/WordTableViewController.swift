//
//  WordTableViewController.swift
//  tableViewPort
//
//  Created by Kumar Shubham on 31/01/21.
//

import Foundation
import UIKit

class WordTableViewController : UIViewController{
    
    let tableView   = UITableView()
    var safeArea    : UILayoutGuide!
    
    var character  = ["Links","Zelda","Ganondorf","Midna"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setUpNavigation()
        tableView.dataSource = self
        tableView.delegate = self
        view.backgroundColor = UIColor(red: 0.75, green: 0.01, blue: 0.18, alpha: 1.00) //lipstick red
        setupTableView()
    }
    
    func setUpNavigation() {
     navigationItem.title = "Words"
     self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.75, green: 0.01, blue: 0.18, alpha: 1.00) //lipstick red
     self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func setupTableView(){
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints                     = false
        safeArea = view.layoutMarginsGuide
        setupTableViewConstraints()
        tableView.register(WordsTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func setupTableViewConstraints(){
        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive        = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive          = true
        tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive  = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive        = true
    }
    
}

extension WordTableViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return character.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WordsTableViewCell
        cell.nameLabel.text = character[indexPath.row]
        cell.definition.text = "Will add the definition soon .. wait for me"
        return cell
    }

}

extension WordTableViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 50
    }
    
}
