//
//  Label + Extension.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/19/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
