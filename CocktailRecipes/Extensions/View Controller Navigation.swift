//
//  View Controller Navigation.swift
//  CocktailRecipes
//
//  Created by Artur Sokolov on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let item = indexPath.item
        selectedItemCocktailID = cocktails[item].id ?? ""
        
        performSegue(withIdentifier: "toDelailVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailViewController
        destinationVC.jsonURL += selectedItemCocktailID
    }
    
}
