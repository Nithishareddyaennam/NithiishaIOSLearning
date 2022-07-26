//
//  ContactTVCell.swift
//  CustomTVCellDemo
//
//  Created by Kanna Dinesh on 7/22/22.
//

import UIKit

class ContactTVCell: UITableViewCell {

    @IBOutlet weak var infoTextField: UITextField!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var emailLable: UILabel!
    @IBOutlet weak var phoneNumLable: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var thumb1: UIImageView!
    @IBOutlet weak var thumb2: UIImageView!
    @IBOutlet weak var thumb3: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
