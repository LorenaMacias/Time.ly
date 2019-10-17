//
//  CustomCellTableViewCell.swift
//  Time.ly
//
//  Created by Kenneth Aguilar on 10/2/19.
//  Copyright © 2019 AWSStudent. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabelCell: UILabel!
    
    
    @IBOutlet weak var descLabelCell: UILabel!
    
    
    @IBOutlet weak var priorityLabelCell: UILabel!
    
    
    @IBOutlet weak var dateLabelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        sendSubviewToBack(priorityLabelCell)
        priorityLabelCell.layer.zPosition = 0;
        titleLabelCell.layer.zPosition = 1;
        descLabelCell.layer.zPosition = 2;

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
