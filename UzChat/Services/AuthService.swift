//
//  AuthService.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/27/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class AuthService {
    
    private let auth = Auth.auth()
    
    func register(email: String?, password: String?, confirmPassword: String?, completion: (Result<User, Error>) -> Void) {
        
    }
}
