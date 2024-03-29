//
//  ViewController.swift
//  JSONProject
//
//  Created by Aennam, Nithisha Reddy on 7/19/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource
{
    struct jsondata: Codable{
        var userId: Int!
        var id: Int!
        var title : String!
        var body : String!
        }
    var userData = [jsondata]()
    var tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
 
     override func viewDidLoad() {
           super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        readLocalFile(forName: "datafile")
        self.view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "jsonTVCell")
        //print(p[0])
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
        var cell = tableView.dequeueReusableCell(withIdentifier: "jsonTVCell", for: indexPath)
         cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "jsonTVCell")

       let ID = "\(userData[indexPath.row].id!)"
        let UserID = "\(userData[indexPath.row].userId!)"
        cell.textLabel?.text = (ID + " ; " + UserID) as String
        //cell.textLabel?.numberOfLines = 3
        cell.detailTextLabel?.numberOfLines = 0

        cell.detailTextLabel?.text = "TITLE: " + userData[indexPath.row].title + "\nBODY:" + userData[indexPath.row].body //as String
      //  cell.detailTextLabel?.numberOfLines = 2
       // cell.detailTextLabel?.text = userData[indexPath.row].body as String

        
        return cell
    }
     
}

