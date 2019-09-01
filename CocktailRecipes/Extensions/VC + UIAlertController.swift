//
//  VC + UIAlertController.swift
//  CocktailRecipes
//
//  Created by Владислав Лазарев on 01/09/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

extension ViewController {
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(okAlert)
        present(alert, animated: true, completion: nil)
    }
}
