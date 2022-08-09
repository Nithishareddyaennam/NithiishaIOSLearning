//
//  customTableViewCell.swift
//  JSONProject
//
//  Created by Aennam, Nithisha Reddy on 8/5/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    var iDLabel : UILabel!
    var userIDLabel : UILabel!
    var titleLabel : UILabel!
    var bodyLabel : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setUpInitialUI()
        // Initialization code
    }
    func setUpInitialUI()
    {
        iDLabel = UILabel.init(frame: CGRect(x: 30, y: 40, width: 200, height: 30))
        iDLabel.backgroundColor = .cyan
        iDLabel.text = "IDLAbel"
        self.contentView.addSubview(iDLabel)
        
        userIDLabel = UILabel.init(frame: CGRect(x: 30, y: 80, width: 200, height: 30))
        userIDLabel.backgroundColor = .cyan
        userIDLabel.text = "User ID Label"
        self.contentView.addSubview(userIDLabel)
        
        titleLabel = UILabel.init(frame: CGRect(x: 30, y: 120, width: 200, height: 30))
        titleLabel.backgroundColor = .cyan
        titleLabel.text = "Title Label"
        self.contentView.addSubview(titleLabel)
        
        bodyLabel = UILabel.init(frame: CGRect(x: 30, y: 160, width: 200, height: 30))
        bodyLabel.backgroundColor = .cyan
        bodyLabel.text = "Body Label"
        self.contentView.addSubview(bodyLabel)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let frame = self.contentView.bounds
        let x = frame.width/2 - 100
        iDLabel.frame = CGRect.init(x: x, y: 40, width: 200, height: 30)
        userIDLabel.frame = CGRect.init(x: x, y: 80, width: 200, height: 30)
        titleLabel.frame = CGRect.init(x: x, y: 120, width: 200, height: 30)
        bodyLabel.frame = CGRect.init(x: x, y: 160, width: 200, height: 30)

                
    }
    func setUI(dataObj : jsondata ) {
        iDLabel.text = dataObj.id as! String?
        userIDLabel.text = dataObj.userId as! String?
        titleLabel.text = dataObj.title
        bodyLabel.text = dataObj.body
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

