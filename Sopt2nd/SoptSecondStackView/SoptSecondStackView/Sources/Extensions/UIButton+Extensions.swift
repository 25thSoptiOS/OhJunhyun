//
//  UIButton+Extensions.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/10/13.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

extension UIButton {
    
    func makeButtonRadius(_ width : CGFloat, _ color : UIColor, _ radius: CGFloat ) {
        
        self.layer.borderWidth = CGFloat(width)
        self.layer.borderColor = color.cgColor
        self.layer.cornerRadius = radius

    }
    
}
