//
//  TodoListViewCell.swift
//  TabBarStudy
//
//  Created by iwamoto on 2020/02/12.
//  Copyright © 2020 iwamoto. All rights reserved.
//

import UIKit

class TodoListViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isDoneLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
