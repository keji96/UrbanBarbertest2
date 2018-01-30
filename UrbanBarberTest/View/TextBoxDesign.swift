//
//  TextBoxDesign.swift
//  UrbanBarberTest
//
//  Created by kevin campbell on 1/29/18.
//  Copyright © 2018 n28. All rights reserved.
//

import Foundation

class TextBoxDesign{
    
    func addPaddingAndBorder(to textField: UITextField, placeholder: String) {
        let border = CALayer()
        let width = CGFloat(2.0)
        let color = UIColor.white
        
        border.borderColor = UIColor.blue.cgColor
        border.frame = CGRect(x: 0, y: textField.frame.size.height - width, width:  textField.frame.size.width, height: textField.frame.size.height)
        border.borderWidth = width
        textField.layer.addSublayer(border)
        textField.layer.masksToBounds = true
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width:30.0, height: 2.0))
        textField.leftView = leftView
        textField.leftViewMode = .always
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedStringKey.foregroundColor: color])
        
        
        
    }
    
    
}
