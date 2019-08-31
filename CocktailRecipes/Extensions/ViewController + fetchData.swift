//
//  ViewController + fetchData.swift
//  CocktailRecipes
//
//  Created by Artur Sokolov on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import Foundation

extension ViewController {
    func fetchData() {
        guard let url = URL(string: jsonURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            guard let data = data else { return }
            
            do {
                let allDrinks = try JSONDecoder().decode(Drinks.self, from: data)
                self.cocktails = allDrinks.cocktails ?? []
    
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
                
            } catch let error {
                print(error.localizedDescription)
            }
            
            }.resume()
    }
}
