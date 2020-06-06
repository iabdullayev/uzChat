//
//  WaitingChatsNavigation.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 6/6/20.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func chatToActive(chat: MChat)
}
