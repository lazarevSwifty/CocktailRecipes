//
//  Cocktail.swift
//  CocktailRecipes
//
//  Created by Владислав Лазарев on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import Foundation

struct Cocktail: Decodable {
    
    var id: String?
    var name: String?
    var instructions: String?
    var imageURL: String?
    
    var ingredientOne: String?
    var ingredientTwo: String?
    var ingredientThree: String?
    var ingredientFour: String?
    var ingredientFive: String?
    var ingredientSix: String?
    
    var measureOne: String?
    var measureTwo: String?
    var measureThree: String?
    var measureFour: String?
    var measureFive: String?
    var measureSix: String?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "idDrink"
        case name = "strDrink"
        case instructions = "strInstructions"
        case imageURL = "strDrinkThumb"
        
        case ingredientOne = "strIngredient1"
        case ingredientTwo = "strIngredient2"
        case ingredientThree = "strIngredient3"
        case ingredientFour = "strIngredient4"
        case ingredientFive = "strIngredient5"
        case ingredientSix = "strIngredient6"
        
        case measureOne = "strMeasure1"
        case measureTwo = "strMeasure2"
        case measureThree = "strMeasure3"
        case measureFour = "strMeasure4"
        case measureFive = "strMeasure5"
        case measureSix = "strMeasure6"
    }
    
}

struct Drinks: Decodable {
    
    var cocktails: [Cocktail]?
    
    enum CodingKeys: String, CodingKey {
        
        case cocktails = "drinks"
        
    }
}
