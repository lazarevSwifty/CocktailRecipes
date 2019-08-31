//
//  DetailViewController.swift
//  CocktailRecipes
//
//  Created by Владислав Лазарев on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var testLabel: UILabel!
    
    // MARK: - Properties
    var jsonURL = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i="
    var cocktail: Cocktail?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        testLabel.text = jsonURL
        
        view.makeGradient()
    }
    

   

}
