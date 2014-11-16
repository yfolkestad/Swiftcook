//
//  RecipeViewController.swift
//  SwiftCook
//
//  Created by Yann Folkestad on 11/7/14.
//  Copyright (c) 2014 Cooking Yann & Ken. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView! = UITableView()
    
    let items: [String] = ["Yann", "John", "Lawn", "Frawn"]
    
//    var recipeBook: RecipeContainer()?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.recipeBook = RecipeContainer()
        
        // Do any additional setup after loading the view.
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //required for UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    //required for UITableViewDataSource
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //var cellIdentifier: String = "ToDoList";
        var cell: UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        //if (cell == nil){
//            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
//                reuseIdentifier:CellIdentifier] autorelease];
//            
//            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        //}
        
        cell.textLabel.text = self.items[indexPath.row];
//        cell.textLabel.font = [UIFont systemFontOfSize:14.0];
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.selectionStyle = UITableViewCellSelectionStyle.Blue;
        
        
//        var checked: Boolean = [[itsToDoChecked objectAtIndex:indexPath.row] boolValue];
//        UIImage *image = (checked) ? [UIImage imageNamed:@"checked.png"] : [UIImage imageNamed:@"unchecked.png"];
        
//        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//        CGRect frame = CGRectMake(0.0, 0.0, image.size.width, image.size.height);
//        button.frame = frame;   // match the button's size with the image size
//        button.tag = indexPath.row;
//        [button setBackgroundImage:image forState:UIControlStateNormal];
        
        // set the button's target to this table view controller so we can interpret touch events and map that to a NSIndexSet
//        [button addTarget:self action:@selector(checkButtonTapped:event:) forControlEvents:UIControlEventTouchUpInside];
//        cell.accessoryView = button;
        
        return cell;
    }
    
    //required for UITableViewDataSource
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
    }
    
//    (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    
//    NSString *CellIdentifier = @"ToDoList";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    if (cell == nil)
//    {
//    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
//    reuseIdentifier:CellIdentifier] autorelease];
//    
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    }
//    
//    cell.textLabel.text = [itsToDoTitle objectAtIndex:indexPath.row];
//    cell.textLabel.font = [UIFont systemFontOfSize:14.0];
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
//    
//    
//    BOOL checked =  [[itsToDoChecked objectAtIndex:indexPath.row] boolValue];
//    UIImage *image = (checked) ? [UIImage imageNamed:@"checked.png"] : [UIImage imageNamed:@"unchecked.png"];
//    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    CGRect frame = CGRectMake(0.0, 0.0, image.size.width, image.size.height);
//    button.frame = frame;   // match the button's size with the image size
//    button.tag = indexPath.row;
//    [button setBackgroundImage:image forState:UIControlStateNormal];
//    
//    // set the button's target to this table view controller so we can interpret touch events and map that to a NSIndexSet
//    [button addTarget:self action:@selector(checkButtonTapped:event:) forControlEvents:UIControlEventTouchUpInside];
//    cell.accessoryView = button;
//    
//    return cell;
//    }
    
    
//    (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
//    {
//    
//    BOOL checked = [[itsToDoChecked objectAtIndex:indexPath.row] boolValue];
//    [itsToDoChecked removeObjectAtIndex:indexPath.row];
//    [itsToDoChecked insertObject:(checked) ? @"FALSE":@"TRUE" atIndex:indexPath.row];
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    UIButton *button = (UIButton *)cell.accessoryView;
//    
//    UIImage *newImage = (checked) ? [UIImage imageNamed:@"unchecked.png"] : [UIImage imageNamed:@"checked.png"];
//    [button setBackgroundImage:newImage forState:UIControlStateNormal];
//    
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Save"
//    style:UIBarButtonItemStylePlain target:self action:@selector(saveChecklist:)];
//    self.navigationItem.rightBarButtonItem = backButton;
//    [backButton release];
//    
//    }

}
