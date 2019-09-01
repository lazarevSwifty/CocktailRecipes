//
//  ViewController.swift
//  CocktailRecipes
//
//  Created by Владислав Лазарев on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var jsonURL = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic"
    var searchURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="
    var cocktails: [Cocktail] = []
    var selectedItemCocktailID = ""
    
    // MARK: - IB Outlets
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var searchBar: UISearchBar!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        navigationController?.navigationBar.barStyle = .black
        
        //fetchData(name: jsonURL)
        NetworkManager.fetchData(str: jsonURL) { drinks in
            self.cocktails = drinks.cocktails ?? []
            self.collectionView.reloadData()
        }
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundView = UIView()
        collectionView.backgroundView?.makeGradient()
        
    }
    
}


