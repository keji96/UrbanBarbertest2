//
//  DesinableButton.swift
//  UrbanBarberTest
//
//  Created by kevin campbell on 1/30/18.
//  Copyright © 2018 n28. All rights reserved.
//

import UIKit

 @IBDesignable class DesinableButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            
            self.layer.cornerRadius = cornerRadius
        }
        
    }

}
