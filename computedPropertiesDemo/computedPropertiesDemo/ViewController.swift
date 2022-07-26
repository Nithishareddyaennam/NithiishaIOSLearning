//
//  ViewController.swift
//  computedPropertiesDemo
//
//  Created by Aennam, Nithisha Reddy on 7/21/22.
//

import UIKit

class ViewController: UIViewController {
    struct Sections{
        var title: String
        var rows: [Contacts]
        }
    struct Contacts {
        var name: String
        var phoneNmber: String
        var email: String
        }

    var tableViewModel = [Sections]()
    private var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView.init(frame: UIScreen.main.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.backgroundColor = .clear
        self.view.backgroundColor = UIColor.init(red: 161/255, green: 73/255, blue: 228/255, alpha: 1)
        
       
        let c1 = Contacts.init(name: "name1", phoneNmber: "123", email: "x@mail.com")
        let c2 = Contacts.init(name: "name2", phoneNmber: "321", email: "p@mail.com")
        let c3 = Contacts.init(name: "name3", phoneNmber: "231", email: "y@mail.com")
        let c4 = Contacts.init(name: "name4", phoneNmber: "312", email: "z@mail.com")
        
        let c5 = Contacts.init(name: "name1", phoneNmber: "123", email: "x@mail.com")
        let c6 = Contacts.init(name: "name2", phoneNmber: "321", email: "p@mail.com")
        let c7 = Contacts.init(name: "name3", phoneNmber: "231", email: "y@mail.com")
        
        let c8 = Contacts.init(name: "name1", phoneNmber: "123", email: "x@mail.com")
        let c9 = Contacts.init(name: "name2", phoneNmber: "321", email: "p@mail.com")
        let c10 = Contacts.init(name: "name3", phoneNmber: "231", email: "y@mail.com")
        let c11 = Contacts.init(name: "name4", phoneNmber: "312", email: "z@mail.com")
        let c12 = Contacts.init(name: "name4", phoneNmber: "312", email: "z@mail.com")

        
        
        
        let section1 = Sections.init(title: "A",rows: [c1,c2,c3,c4])
        let section2 = Sections.init(title: "B",rows: [c5,c6,c7])
        let section3 = Sections.init(title: "C", rows: [c8,c9,c10,c11,c12])
        
        tableViewModel=[section1,section2,section3]
        view.addSubview(tableView)
        
    }
    
    

}

extension ViewController : UITableViewDataSource, UITableViewDelegate{

    func numberOfSections(in tableView: UITableView) -> Int {
        return  tableViewModel.count   }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel[section].rows.count
}
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "OptionCell")
//
        cell.textLabel?.font = UIFont.init(name: "System-Bold", size: 22)
        cell.textLabel?.text = tableViewModel[indexPath.section].rows[indexPath.row].name
        cell.detailTextLabel?.text = (tableViewModel[indexPath.section].rows[indexPath.row].phoneNmber + "," + tableViewModel[indexPath.section].rows[indexPath.row].email) as String
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return tableViewModel[section].title
    }
    
}


