//
//  Recipe.swift
//  SwiftCook
//
//  Created by Yann Folkestad on 11/14/14.
//  Copyright (c) 2014 Cooking Yann & Ken. All rights reserved.
//

import Foundation

/*
 This class describes a recipe
*/
class Recipe{
    
    //image object for the recipe
    
    //reciipe title
    var recipeTitle: String?
    
    //cooking time
    var cookingTime: String?
    
    //directions. Currently using array list
    //TODO investigate if there is a better data structure
    //there may be an issue removing elements from the middle of the arry.
    //All other elements would then be shifted losing the ordering
    //Perhaps a dictionary would be better here
    var directions: [String]?
    
    //ingredients for recipe
    //TODO investigate if there is a better data structure
    var ingredients: [String]?
    
    //initializes an instance of this class
    init(){
        directions = [""]
    }
    
    //set the recipe title
    func setTitle(title: String){
        self.recipeTitle = title
    }
    
    //get the recipe title
    func getTitle() -> String {
        return recipeTitle!
    }
    
    //set the cooking time
    func setCookTime(cookTime: String){
        cookingTime = cookTime
    }
    
    //get the cooking time
    func getCookTime() -> String{
        return cookingTime!
    }
    
    //add a new direction
    func addDirections(direction: String){
        self.directions?.append(direction)
    }
    
    //get the recipe directions
    func getDirections() -> [String]{
        return directions!
    }
    
    //add a new direction at a specified index
    func addSpecificDirection(index: Int, direction: String){
        self.directions?.insert(direction, atIndex: index)
    }
    
    //remove all directions
    func removeAllDirections(){
        self.directions?.removeAll(keepCapacity: true)
    }
    
    //get the ingredients
    func getIngredients() -> [String]{
        return ingredients!
    }
    
    //add ingredients
    func addIngredients(ingredient: String){
        self.ingredients?.append(ingredient)
    }
    
    //remove ingredients
    func removeIngredient(index: Int){
        ingredients?.removeAtIndex(index);
    }
}