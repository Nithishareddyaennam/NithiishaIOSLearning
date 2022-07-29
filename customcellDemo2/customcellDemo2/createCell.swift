//
//  createCell.swift
//  customcellDemo2
//
//  Created by Aennam, Nithisha Reddy on 7/25/22.
//

import Foundation
class createCell: UITableViewCell
{
    var nameLable : UILabel!
    var emailLabel : UILabel!
    var phoneLabel : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initialUI()
    }
    func initialUI()  {
       
        nameLable = UILabel.init(frame: CGRect.init(x: 30, y: 40, width: 200, height: 30))
        nameLable.backgroundColor = .cyan
        nameLable.text = "Name Label"
        self.contentView.addSubview(nameLable)
        
        emailLabel = UILabel.init(frame: CGRect.init(x: 30, y: 80, width: 200, height: 30))
        emailLabel.text = "Email Label"
        emailLabel.backgroundColor = .cyan
        self.contentView.addSubview(emailLabel)
        
        phoneLabel = UILabel.init(frame: CGRect.init(x: 30, y: 120, width: 200, height: 30))
        phoneLabel.text = "Phone Label"
        phoneLabel.backgroundColor = .cyan
        self.contentView.addSubview(phoneLabel)
        
        
        
                
    }
}
