//
//  CategoryTableViewCell.swift
//  EFAB
//
//  Created by Ben Larrabee on 11/2/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var amountLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
