//
//  DesinableView.swift
//  UrbanBarberTest
//
//  Created by kevin campbell on 1/29/18.
//  Copyright © 2018 n28. All rights reserved.
//

import UIKit

@IBDesignable class DesinableView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            
            self.layer.cornerRadius = cornerRadius
        }
        
    }

}
