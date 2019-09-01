//
//  NetworkManager.swift
//  CocktailRecipes
//
//  Created by Владислав Лазарев on 01/09/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

class NetworkManager {
    
    static func fetchData(urlString: String, completion: @escaping (Drinks) -> ()) {
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let drinks = try JSONDecoder().decode(Drinks.self, from: data)
                
                DispatchQueue.main.async {
                    completion(drinks)
                }
            } catch let error {
                print(error.localizedDescription)
            }
            }.resume()
    }
}
