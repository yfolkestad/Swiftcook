//
//  ViewController.swift
//  SwiftCook
//
//  Created by Yann Folkestad on 11/5/14.
//  Copyright (c) 2014 Cooking Yann & Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //table view property
    @IBOutlet var tableview: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //method for the let's decide button
//    @IBAction func letsDecide(sender: AnyObject){
//        let vc = LetsDecideVeiwController(nibName: "LetsDecideVeiwController", bundle: nil)
//        navigationController?.pushViewController(vc, animated: true)
//    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        return nil
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }
    
    
}

