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
        var userId: Int?
        var id: Int?
        var title : String?
        var body : String?
        }

   private var tableview: UITableView!
    var z = [jsondata]()//= [jsondata]()
    
    override func viewDidLoad() {
           super.viewDidLoad()

        tableview = UITableView.init(frame: UIScreen.main.bounds, style: .grouped)
        tableview.delegate = self
        tableview.dataSource = self
        readLocalFile(forName: "datafile")
      
        
        
        self.view.addSubview(tableview)
        
       }
       
       private func readLocalFile(forName name: String) {
       
           let bundlePath = Bundle.main.path(forResource: name, ofType: "json")
           
           
           let filedataString = try! String.init(contentsOfFile: bundlePath!)
           
           let data = filedataString.data(using: .utf8)
           let jsonArray = try! JSONSerialization.jsonObject(with: data!, options: []) as! [jsondata]
           do {
               z = try JSONDecoder().decode(jsonArray, from: data!)
           }
           catch{
               print(error)
           }
           print(jsonArray)
           return
       }


       // MARK: - Table view data source
        

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
            return z.count
       }

       
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "Cell1")
            cell.textLabel?.font = UIFont(name: "System-Bold", size: 22)
          //cell.textLabel?.text = options[indexPath.section][indexPath.row]
            //cell.textLabel?.text = z[indexPath.row].title
            cell.textLabel?.text = z[indexPath.row].id
            cell.description = (z[indexPath.row].title + " ," + z[indexPath.row].userId + "," + z[indexPath.row].body)
                  //  cell.detailTextLabel?.text = z[indexPath.row].id! + " " + z[indexPath.row].body
            //cell.detailTextLabel?.text = ta
          //cell.su
           // cell.description = tableViewModel[indexPath.row].body
           // cell.contentView = ta
           return cell
       }



}

