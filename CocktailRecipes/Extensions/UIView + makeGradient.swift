//
//  UIView + Gradient.swift
//  CocktailRecipes
//
//  Created by Artur Sokolov on 31/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

extension UIView {
    
    func makeGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        gradient.colors = [#colorLiteral(red: 0.2636255026, green: 0.1639619172, blue: 0.3957746625, alpha: 1).cgColor,#colorLiteral(red: 0.9579231143, green: 0.4885889292, blue: 0.3089327812, alpha: 1).cgColor,#colorLiteral(red: 0.6683726907, green: 0.278578341, blue: 0.1882153451, alpha: 1).cgColor]
        gradient.locations = [0.0, 0.8, 1.0]
        
        self.layer.insertSublayer(gradient, at: 0)
    }
}
