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
    var jsonURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a"
    var cocktails: [Cocktail] = []
    
    // MARK: - IB Outlets
    @IBOutlet var collectionView: UICollectionView!
    
    
    // MARK: - Lifecycle
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barStyle = .black
        
        fetchData()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundView = UIView()
        collectionView.backgroundView?.makeGradient()
        
    }

}


