//
//  WordsTableViewCell.swift
//  tableViewPort
//
//  Created by Kumar Shubham on 31/01/21.
//

import Foundation
import UIKit

class WordsTableViewCell : UITableViewCell{
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.containerView.addSubview(nameLabel)
        self.containerView.addSubview(definition)
        self.contentView.addSubview(containerView)
        containerView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo:self.contentView.leadingAnchor, constant:10).isActive = true
        containerView.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor, constant:-10).isActive = true
        containerView.heightAnchor.constraint(equalToConstant:40).isActive = true

        nameLabel.topAnchor.constraint(equalTo:self.containerView.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo:self.containerView.trailingAnchor).isActive = true
        
        definition.topAnchor.constraint(equalTo:self.nameLabel.bottomAnchor).isActive = true
        definition.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
        definition.topAnchor.constraint(equalTo:self.nameLabel.bottomAnchor).isActive = true
        
     }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    let nameLabel : UILabel = {
       
        let label                                       = UILabel()
        label.font                                      = UIFont.boldSystemFont(ofSize: 20)
        label.textColor                                 = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let definition : UILabel = {
        
        let label                                       = UILabel()
        label.font                                      = UIFont.italicSystemFont(ofSize: 14)
        label.textColor                                 = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerView:UIView = {
      let view = UIView()
      view.translatesAutoresizingMaskIntoConstraints = false
      view.clipsToBounds = true // this will make sure its children do not go out of the boundary
      return view
    }()
}
