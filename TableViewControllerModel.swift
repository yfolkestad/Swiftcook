//
//  TableViewController.swift
//  SwiftCook
//
//  Created by Yann Folkestad on 11/5/14.
//  Copyright (c) 2014 Cooking Yann & Ken. All rights reserved.
//

import UIKit

class TableViewControllerModel: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView! = UITableView()
    var items: [String] = ["Chicken Salad", "Funny Noodles", "Sandwhich"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    //required for UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    //required for UITableViewDataSource
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel.text = self.items[indexPath.row]
        return cell
    }
    
    //required for UITableViewDataSource
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
    }

}
