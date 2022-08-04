//
//  ViewController.swift
//  JSONProject
//
//  Created by Aennam, Nithisha Reddy on 7/19/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource
{
    struct jsondata: Any{
        var userId: Any?
        var id: Any?
        var title : Any?
        var body : Any?
        }
    var z = [Any]()
    var tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)

     override func viewDidLoad() {
           super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
         z = self.readLocalFile(forName: "datafile")
        self.view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "jsonTVCell")
        //print(p[0])
       }
    private func readLocalFile(forName name: String) ->[Any] {
    
        let bundlePath = Bundle.main.path(forResource: name, ofType: "json")
        let filedataString = try! String.init(contentsOfFile: bundlePath!)
        let data = filedataString.data(using: .utf8)
        let jsonArray = try! JSONSerialization.jsonObject(with: data!, options: []) as! [Any]
        return jsonArray

    }
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jsonTVCell", for: indexPath)
        cell.textLabel?.text = z[indexPath.row] as? String
        return cell
    }
     
}

