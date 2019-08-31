//
//  ViewController.swift
//  CocktailRecipes
//
//  Created by Владислав Лазарев on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Properties
    private var jsonURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a"
    private var cocktails: [Cocktail] = []
    
    // MARK: - IB Outlets
    @IBOutlet var collectionView: UICollectionView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.makeGradient()
        fetchData()
    }

    func fetchData() {
        guard let url = URL(string: jsonURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            guard let data = data else { return }
            
            do {
                let allDrinks = try JSONDecoder().decode(Drinks.self, from: data)
                self.cocktails = allDrinks.cocktails ?? []
                print(self.cocktails.first)
                
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
}

