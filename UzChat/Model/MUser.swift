//
//  MUser.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/26/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

struct MUser: Hashable, Decodable {
    var username: String
    var avatarStringURL: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MUser, rhs: MUser) -> Bool {
        return lhs.id == rhs.id
    }
}

