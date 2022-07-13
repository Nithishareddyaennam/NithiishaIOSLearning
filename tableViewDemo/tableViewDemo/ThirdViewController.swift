//
//  ThirdViewController.swift
//  tableViewDemo
//
//  Created by Aennam, Nithisha Reddy on 7/11/22.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   var thirdButton1 : UIButton!
    var thirdButton2 : UIButton!
    var thirdButton3 : UIButton!
    var thirdButton4 : UIButton!
    var thirdButton5 : UIButton!
    var thirdButton6 : UIButton!
    var thirdButton7 : UIButton!
    var thirdButton8 : UIButton!
    private let tableView: UITableView = {
    let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell3")
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupThird1Button()
        setupThird2Button()
        setupThird3Button()
        setupThird4Button()
        setupThird5Button()
        setupThird6Button()
        setupThird7Button()
        setupThird8Button()
        
        // Do any additional setup after loading the view.
    }
    func setupThird1Button()
    {
        thirdButton1 = UIButton.init(type: .custom)
      //  thirdButton1.frame = CGRect.init(x: 30, y: 100, width: 100, height: 30)
        thirdButton1.backgroundColor = .gray
        thirdButton1.translatesAutoresizingMaskIntoConstraints = true
        thirdButton1.setTitle("Button1", for: .normal)
        thirdButton1.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton1)
    }
    
    func setupThird2Button()
    {
        thirdButton2 = UIButton.init(type: .custom)
        //thirdButton2.frame = CGRect.init(x: 180, y: 100, width: 100, height: 30)
        thirdButton2.backgroundColor = .gray
        thirdButton2.translatesAutoresizingMaskIntoConstraints = true
        thirdButton2.setTitle("Button2", for: .normal)
        thirdButton2.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton2)
    }
    
    func setupThird3Button()
    {
        thirdButton3 = UIButton.init(type: .custom)
       // thirdButton3.frame = CGRect.init(x: 30, y: 150, width: 100, height: 30)
        thirdButton3.backgroundColor = .gray
        thirdButton3.translatesAutoresizingMaskIntoConstraints = true
        thirdButton3.setTitle("Button3", for: .normal)
        thirdButton3.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton3)
    }
    func setupThird4Button()
    {
        thirdButton4 = UIButton.init(type: .custom)
        //thirdButton4.frame = CGRect.init(x: 180, y: 150, width: 100, height: 30)
        thirdButton4.backgroundColor = .gray
        thirdButton4.translatesAutoresizingMaskIntoConstraints = true
        thirdButton4.setTitle("Button4", for: .normal)
        thirdButton4.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton4)
    }
    func setupThird5Button()
    {
        thirdButton5 = UIButton.init(type: .custom)
       // thirdButton5.frame = CGRect.init(x: 30, y: 200, width: 100, height: 30)
        thirdButton5.backgroundColor = .gray
        thirdButton5.translatesAutoresizingMaskIntoConstraints = true
        thirdButton5.setTitle("Button5", for: .normal)
        thirdButton5.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton5)
    }
    func setupThird6Button()
    {
        thirdButton6 = UIButton.init(type: .custom)
        thirdButton6.frame = CGRect.init(x: 180, y: 200, width: 100, height: 30)
        thirdButton6.backgroundColor = .gray
        thirdButton6.translatesAutoresizingMaskIntoConstraints = true
        thirdButton6.setTitle("Button6", for: .normal)
        thirdButton6.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton6)
    }
    func setupThird7Button()
    {
        thirdButton7 = UIButton.init(type: .custom)
       thirdButton7.frame = CGRect.init(x: 30, y: 250, width: 100, height: 30)
        thirdButton7.backgroundColor = .gray
        thirdButton7.translatesAutoresizingMaskIntoConstraints = true
        thirdButton7.setTitle("Button7", for: .normal)
        thirdButton7.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton7)
    }
    func setupThird8Button()
    {
        thirdButton8 = UIButton.init(type: .custom)
       // thirdButton8.frame = CGRect.init(x: 180, y: 250, width: 100, height: 30)
        thirdButton8.backgroundColor = .gray
        thirdButton8.translatesAutoresizingMaskIntoConstraints = true
        thirdButton8.setTitle("Button8", for: .normal)
        thirdButton8.setTitleColor(.red, for: .normal)
        self.view.addSubview(thirdButton8)
    }
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    
}


func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8
}



func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   var cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath)
    if indexPath.row==0
    {

     setupThird1Button()
    }
    else if indexPath.row==1{
        setupThird2Button()
    }
    else if indexPath.row==2{
        setupThird2Button()
    }
    else if indexPath.row==3{
        setupThird3Button()
    }
    else if indexPath.row==4{
        setupThird4Button()
    }
    else if indexPath.row==5{
        setupThird5Button()
    }
    else if indexPath.row==6{
        setupThird6Button()
    }
    else if indexPath.row==7{
        setupThird7Button()
    }
    
  //cell3.textLabel?.text = fullcontact[indexPath.row]
   
     return cell3
}

}
