//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Aennam, Nithisha Reddy on 7/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    let names = ["nithisha", "sai", "mommy","anusha"]
    
    var contactsButton : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self;
        tableView.dataSource = self// Do any additional setup after loading the view.
        contactsButton = UIButton.init(type: .custom)
        contactsButton.frame = CGRect.init(x: 100, y: 400, width: 100, height: 30)
        contactsButton.backgroundColor = .gray
        contactsButton.translatesAutoresizingMaskIntoConstraints = true
        contactsButton.setTitle("Contacts", for: .normal)
        contactsButton.setTitleColor(.red, for: .normal)
        contactsButton.addTarget(self, action: #selector(contactsButtonTapped), for: .touchUpInside)
        self.view.addSubview(contactsButton)

    }
    @objc func contactsButtonTapped()
        {
          let vc = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
            vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
            
        }
   
}
    extension ViewController : UITableViewDelegate
    {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("tapped")
        }
    }
    extension ViewController: UITableViewDataSource
    {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return names.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = names[indexPath.row]
            return cell
        }
    }



