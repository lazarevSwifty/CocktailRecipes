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
    @IBOutlet var coctailImage: ImageView!
    @IBOutlet var instructionsLabel: UILabel!
    @IBOutlet var ingredientOneLabel: UILabel!
    @IBOutlet var ingredientTwoLabel: UILabel!
    @IBOutlet var ingredientThreeLabel: UILabel!
    @IBOutlet var ingredientFourLabel: UILabel!
    @IBOutlet var ingredientFiveLabel: UILabel!
    @IBOutlet var ingredietSixLabel: UILabel!
    
    // MARK: - Properties
    var jsonURL = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i="
    var cocktail: Cocktail?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkManager.fetchData(urlString: jsonURL) { drinks in
            self.cocktail = drinks.cocktails?.first
            self.configureView()
        }
        
        view.makeGradient()
    }
    
    func configureView() {
        
        title = cocktail?.name
        
        coctailImage.fetchImage(with: cocktail?.imageURL)
        coctailImage.layer.cornerRadius = 10
        coctailImage.layer.masksToBounds = true
        
        instructionsLabel.text = cocktail?.instructions
        ingredientOneLabel.text = "\(cocktail?.ingredientOne ?? "") \(cocktail?.measureOne ?? "")"
        ingredientTwoLabel.text = "\(cocktail?.ingredientTwo ?? "") \(cocktail?.measureTwo ?? "")"
        ingredientThreeLabel.text = "\(cocktail?.ingredientThree ?? "") \(cocktail?.measureThree ?? "")"
        ingredientFourLabel.text = "\(cocktail?.ingredientFour ?? "") \(cocktail?.measureFour ?? "")"
        ingredientFiveLabel.text = "\(cocktail?.ingredientFive ?? "") \(cocktail?.measureFive ?? "")"
        ingredietSixLabel.text = "\(cocktail?.ingredientSix ?? "") \(cocktail?.measureSix ?? "")"
    }
}
