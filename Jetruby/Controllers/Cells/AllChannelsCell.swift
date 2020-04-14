//
//  AllChannelsCell.swift
//  Jetruby
//
//  Created by wtildestar on 13/04/2020.
//  Copyright © 2020 wtildestar. All rights reserved.
//

import UIKit

class AllChannelsCell: UITableViewCell {

    static let reuseId = "AllChannelsCell"
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
