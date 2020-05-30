//
//  AuthError.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/28/20.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

enum AuthError {
    case notFilled
    case invalidEmail
    case passwordsNotMatched
    case unknownError
    case serverError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill out all the fields", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Invalid email", comment: "")
        case .passwordsNotMatched:
            return NSLocalizedString("Password and confirm password do not match", comment: "")
        case .unknownError:
            return NSLocalizedString("Unknown error", comment: "")
        case .serverError:
            return NSLocalizedString("Server error", comment: "")
        }
    }
}
