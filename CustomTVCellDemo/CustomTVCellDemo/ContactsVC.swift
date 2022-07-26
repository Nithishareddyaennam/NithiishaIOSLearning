//
//  ContactsVC.swift
//  CustomTVCellDemo
//
//  Created by Kanna Dinesh on 7/22/22.
//

import UIKit

class ContactsVC: UIViewController {
    struct Sections{
        var title: String
        var rows: [Contacts]
        }
    struct Contacts {
        var name: String
        var phoneNmber: String
        var email: String
        var image: String
        }
    var tableViewModel = [Sections]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        let c1 = Contacts.init(name: "name1", phoneNmber: "123", email: "x@mail.com", image: "image1")
        let c2 = Contacts.init(name: "name2", phoneNmber: "321", email: "p@mail.com",image: "image2")
        let c3 = Contacts.init(name: "name3", phoneNmber: "231", email: "y@mail.com",image: "image3")
        let c4 = Contacts.init(name: "name4", phoneNmber: "312", email: "z@mail.com", image: "image4")
        
        let c5 = Contacts.init(name: "name1", phoneNmber: "123", email: "x@mail.com", image: "image5")
        let c6 = Contacts.init(name: "name2", phoneNmber: "321", email: "p@mail.com", image: "image6")
        let c7 = Contacts.init(name: "name3", phoneNmber: "231", email: "y@mail.com", image: "image7")
        
        let c8 = Contacts.init(name: "name1", phoneNmber: "123", email: "x@mail.com", image: "image8")
        let c9 = Contacts.init(name: "name2", phoneNmber: "321", email: "p@mail.com",image: "image9")
        let c10 = Contacts.init(name: "name3", phoneNmber: "231", email: "y@mail.com", image: "image10")
        let c11 = Contacts.init(name: "name4", phoneNmber: "312", email: "z@mail.com", image: "image11")
        let c12 = Contacts.init(name: "name4", phoneNmber: "312", email: "z@mail.com",image:"image12")

        
        
        
        let section1 = Sections.init(title: "A",rows: [c1,c2,c3,c4])
        let section2 = Sections.init(title: "B",rows: [c5,c6,c7])
        let section3 = Sections.init(title: "C", rows: [c8,c9,c10,c11,c12])
        
        tableViewModel=[section1,section2,section3]
        
        let nib = UINib.init(nibName: "ContactTVCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: String.init(describing: ContactTVCell.self))
        view.addSubview(tableView)

    }

}

extension ContactsVC : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return  tableViewModel.count   }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel[section].rows.count
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTVCell") as! ContactTVCell
        cell.nameLable.text = tableViewModel[indexPath.section].rows[indexPath.row].name
        cell.phoneNumLable.text = tableViewModel[indexPath.section].rows[indexPath.row].phoneNmber
        cell.emailLable.text = tableViewModel[indexPath.section].rows[indexPath.row].email
        cell.profileImageView.image = UIImage.init(named: tableViewModel[indexPath.section].rows[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return tableViewModel[section].title
    }
    
}
