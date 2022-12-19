//
//  GradientView.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 17/12/22.
//

import UIKit

@IBDesignable
class GradientView: UIView {
  @IBInspectable var cornerRadius: CGFloat = 0
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layer.masksToBounds = true
    layer.cornerRadius = cornerRadius
    let gradientLayer = CAGradientLayer()
    let colors = [UIColor.systemBackground.cgColor, UIColor.systemOrange.cgColor]
    gradientLayer.frame = bounds
    gradientLayer.colors = colors
    layer.addSublayer(gradientLayer)
  }
}
