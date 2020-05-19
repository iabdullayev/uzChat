//
//  SignUpViewController.swift
//  UzChat
//
//  Created by Feruza Atahodjaeva on 5/19/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit


class SignUpViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Good to see you!", font: .avenir26())
    
    let emailLabel = UILabel(text: "Email")
    let passwordLabel = UILabel(text: "Password")
    let confirmPasswordLabel = UILabel(text: "Confirm password")
    let alreadyOnBoardLabel = UILabel(text: "Already onboard?")
    
    let emailTextField = OneLineTextField(font: .avenir20())
    let passwordTextField = OneLineTextField(font: .avenir20())
    let confirmTextField = OneLineTextField(font: .avenir20())
    
    
    let signUpButton = UIButton(title: "Sign Up", titleColor: .white, backgroundColor: .buttonDark(), cornerRadius: 4)
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.buttonRed(), for: .normal)
        loginButton.titleLabel?.font = .avenir20()
        view.backgroundColor = .white
        
        setupConstraints()
    }
}

//MARK: - Setup Constraints

extension SignUpViewController {
    private func setupConstraints() {
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField], axis: .vertical, spacing: 0)
        let confirmPasswordStackView = UIStackView(arrangedSubviews: [confirmPasswordLabel, confirmTextField], axis: .vertical, spacing: 0)
        
        signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [
            emailStackView,
            passwordStackView,
            confirmPasswordStackView,
            signUpButton],
            axis: .vertical, spacing: 40)
        
        loginButton.contentHorizontalAlignment = .leading
        
        let bottomStackView = UIStackView(arrangedSubviews: [
            alreadyOnBoardLabel,
            loginButton],
            axis: .horizontal, spacing: 10)
        
        bottomStackView.alignment = .firstBaseline
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
        welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
        stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 160),
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
        bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
        bottomStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
        bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
    }
}


// MARK: - SwiftUI

import SwiftUI

struct SignUpVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let signUpVC = SignUpViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SignUpVCProvider.ContainerView>) -> SignUpViewController {
            return signUpVC
        }
        
        func updateUIViewController(_ uiViewController: SignUpVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SignUpVCProvider.ContainerView>) {
            
        }
    }
}
