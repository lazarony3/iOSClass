//
//  CustomCell.swift
//  HelloWorld
//
//  Created by Lazarony, Robert on 11/21/16.
//  Copyright © 2016 Lazarony, Robert. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var year: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
