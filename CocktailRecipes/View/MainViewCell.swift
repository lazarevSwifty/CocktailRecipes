//
//  MainViewCell.swift
//  CocktailRecipes
//
//  Created by Artur Sokolov on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

class MainViewCell: UICollectionViewCell {
    
    @IBOutlet var cocktailImage: ImageView!
    @IBOutlet var cocktailName: UILabel!
    
    func configure(with cocktail: Cocktail) {
        
        cocktailName.text = cocktail.name
        
        cocktailImage.fetchImage(with: cocktail.imageURL)
    }
    
}
