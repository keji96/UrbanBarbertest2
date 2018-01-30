//
//  CustomTextField.swift
//  UrbanBarberTest
//
//  Created by kevin campbell on 1/29/18.
//  Copyright © 2018 n28. All rights reserved.
//

//import Foundation
class CustomSearchTextField: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds,
                                     UIEdgeInsetsMake(0, 500000, 0, 0))
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds,
                                     UIEdgeInsetsMake(0, 5000000, 0, 0))
    }
}
