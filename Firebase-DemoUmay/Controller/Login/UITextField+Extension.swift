//
//  UITextField+Extension.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 18/12/22.
//

import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
extension UITextField {

    //-------------------------------------------------------------------------------------------------------------------------------------------
    func setLeftPadding(value: Int) {

        self.leftView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: value, height: value)))
        self.leftViewMode = .always
    }

    //-------------------------------------------------------------------------------------------------------------------------------------------
    func setRightPadding(value: Int) {

        self.rightView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: value, height: value)))
        self.rightViewMode = .always
    }
}
