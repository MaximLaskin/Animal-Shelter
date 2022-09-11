//
//  Gradient+.swift
//  Animal Shelter
//
//  Created by Swift on 11.09.2022.
//

import Foundation
import UIKit

extension UIView {
    func addVerticalGradientLayer(
        topRed: CGFloat,
        topGreen: CGFloat,
        topBlue: CGFloat,
        bottomRed: CGFloat,
        bottomGreen: CGFloat,
        bottomBlue: CGFloat
    )
    {
        let primaryColor = UIColor(
            red: topRed/255,
            green: topGreen/255,
            blue: topBlue/255,
            alpha: 1
        )

        let secondaryColor = UIColor(
            red: bottomRed/255,
            green: bottomGreen/255,
            blue: bottomBlue/255,
            alpha: 1
        )

        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
