//
//  NoteCellTableViewCell.swift
//  ChenKunyu-HW5
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/27/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var createDate: UILabel!
    @IBOutlet weak var createTime: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
