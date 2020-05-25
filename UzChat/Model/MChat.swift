//
//  MChat.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/26/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

struct MChat: Hashable, Decodable {
    var username: String
    var userImageString: String
    var lastMessage: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MChat, rhs: MChat) -> Bool {
        return lhs.id == rhs.id
    }
}
