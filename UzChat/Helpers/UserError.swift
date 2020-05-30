//
//  UserError.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/30/20.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation


enum UserError {
    case notFilled
    case photoNotExist
    case cannotGetUserInfo
    case cannotUnwrapToMUser
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill out all the fields", comment: "")
        case .photoNotExist:
            return NSLocalizedString("User didn't select a photo", comment: "")
        case .cannotGetUserInfo:
            return NSLocalizedString("Cannot load info about the User from the Firebase", comment: "")
        case .cannotUnwrapToMUser:
            return NSLocalizedString("Cannot convert MUser from User", comment: "")
        }
    }
}
