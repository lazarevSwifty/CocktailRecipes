//
//  MainViewCell.swift
//  CocktailRecipes
//
//  Created by Artur Sokolov on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

class MainViewCell: UICollectionViewCell {
    
    @IBOutlet var cocktailImage: UIImageView!
    @IBOutlet var cocktailName: UILabel!
    
    func configure(with coctail: Cocktail) {
        
        cocktailName.text = coctail.name
        
        DispatchQueue.global().async {
            guard let stringURL = coctail.imageURL else { return }
            guard let imageURL = URL(string: stringURL) else { return }
            guard let imageData = try? Data(contentsOf: imageURL) else { return }
            
            DispatchQueue.main.async {
                self.cocktailImage.image = UIImage(data: imageData)
            }
        }
    }
    
}
