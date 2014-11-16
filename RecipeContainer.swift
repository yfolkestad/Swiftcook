//
//  RecipeContainer.swift
//  SwiftCook
//
//  Created by Yann Folkestad on 11/14/14.
//  Copyright (c) 2014 Cooking Yann & Ken. All rights reserved.
//

import Foundation

class RecipeContainer{
    
    //container for the recipes
    var cookBook: [String: Recipe]
    
    init(){
        cookBook = [String: Recipe]()
    }
    
    //get recipes
    func getRecipeBook() -> Dictionary<String, Recipe>{
        return cookBook
    }
    
    //add a recipe to the cookBook
    func addRecipe(key: String, recipe: Recipe){
        cookBook.updateValue(recipe, forKey: key)
    }
    
    //remove a recipe from the cookBook
//    func removeRecipe(key: String){
//        cookBook.removeValueForKey(<#key: String#>)
//    }
}