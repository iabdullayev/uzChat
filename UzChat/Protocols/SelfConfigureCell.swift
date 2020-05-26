//
//  SelfConfigureCell.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/25/20.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
