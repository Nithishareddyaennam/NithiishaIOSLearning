//
//  ViewController.swift
//  JSONProject
//
//  Created by Aennam, Nithisha Reddy on 7/19/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource
{
   
    var userData = [jsondata]()
    var tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
 
     override func viewDidLoad() {
           super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        readLocalFile(forName: "datafile")
        //print(p[0])
         let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
         self.tableView.register(nib, forCellReuseIdentifier: String.init(describing: TableViewCell.self))
         view.addSubview(tableView)
       }
    private func readLocalFile(forName name: String)  {
    
        let bundlePath = Bundle.main.path(forResource: name, ofType: "json")
        let filedataString = try! String.init(contentsOfFile: bundlePath!)
        let data = filedataString.data(using: .utf8)
        let jsonArray = try! JSONSerialization.jsonObject(with: data!, options: []) as! [Any]
     createStructObjects(jsonArray: jsonArray)

    }
    func createStructObjects(jsonArray:[Any])
    {
        for i in 0..<jsonArray.count
        {
            let jsonObj = jsonArray[i] as! [String: Any]
            let ob = jsondata.init(userId: jsonObj["userId"] as! Int?, id: jsonObj["id"] as! Int?, title: jsonObj["title"] as! String?, body: jsonObj["body"] as! String?)
            userData.append(ob)
        }
    }
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return userData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.setUI(dataObj : userData[indexPath.row])
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            print("tapped")
            let cell = tableView.cellForRow(at: indexPath)
        cell?.contentView.backgroundColor = .red
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
    cell?.contentView.backgroundColor = .black
    }
 
     
}

