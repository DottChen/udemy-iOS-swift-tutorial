//
//  Styles.swift
//  Destini-iOS13
//
//  Created by 陈勇 on 2022/7/27.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
        
    }
}
