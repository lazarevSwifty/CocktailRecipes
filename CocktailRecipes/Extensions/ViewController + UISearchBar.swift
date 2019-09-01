//
//  ViewController + UISearchBar.swift
//  CocktailRecipes
//
//  Created by Владислав Лазарев on 01/09/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

extension ViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.becomeFirstResponder()
        if let cocktail = searchBar.text {
            let fullURL = searchURL + cocktail
            NetworkManager.fetchData(urlString: fullURL) { drinks in
                self.cocktails = drinks.cocktails ?? []
                self.collectionView.reloadData()
            }
            searchBar.resignFirstResponder()
        } else {
            NetworkManager.fetchData(urlString: jsonURL) { drinks in
                self.cocktails = drinks.cocktails ?? []
                self.collectionView.reloadData()
            }
        }
    }
    
}
