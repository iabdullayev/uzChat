//
//  StackView + Extension.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/31/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
    
}
