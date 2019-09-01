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
        if searchBar.text != "" {
            let fullURL = searchURL + searchBar.text!
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
            searchBar.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    
}
