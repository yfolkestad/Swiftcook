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
    var cookBook: [Recipe]
    
    init(){
        cookBook = [Recipe]()
    }
    
    //get recipes
    func getRecipeBook() -> [Recipe]{
        return cookBook
    }
    
    //add a recipe to the cookBook
    func addRecipe(recipe: Recipe){
        cookBook.append(recipe)
    }
    
    //remove a recipe from the cookBook
    func removeRecipe(index: Int){
        cookBook.removeAtIndex(index)
    }
    
}