//
//  TableViewCell.swift
//  cell
//
//  Created by Aennam, Nithisha Reddy on 8/4/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    var nameLabel: UILabel!
    var emailLabel: UILabel!
    var phoneNumberLabel: UILabel!
    var imageLabel: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setupUICell()
    }
    func setupUICell()
    {
        nameLabel = UILabel.init(frame: CGRect(x: 30, y: 40, width: 200, height: 30))
        nameLabel.backgroundColor = .magenta
        nameLabel.text = "Name Label"
        self.contentView.addSubview(nameLabel)
        
        emailLabel = UILabel.init(frame: CGRect(x: 30, y: 80, width: 200, height: 30))
        emailLabel.backgroundColor = .magenta
        emailLabel.text = "Email Label"
        self.contentView.addSubview(emailLabel)
        
        phoneNumberLabel = UILabel.init(frame: CGRect(x: 30, y: 120, width: 200, height: 30))
        phoneNumberLabel.backgroundColor = .magenta
        phoneNumberLabel.text = "PhoneNumber Label"
        self.contentView.addSubview(phoneNumberLabel)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
