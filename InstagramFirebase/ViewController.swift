//
//  ViewController.swift
//  InstagramFirebase
//
//  Created by Ricardo Rabeto on 10/02/2018.
//  Copyright © 2018 Ricardo Rabeto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //create plus button for picture
    let plusPhotoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "plus_photo"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false;
        return button
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.placeholder = "Email"
        return tf
    }()
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.placeholder = "Username"
        return tf
    }()
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load the button to the view and place a frame to see it
        view.addSubview(plusPhotoButton)
        
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        //add input text to the view using stackview
        setupInputFields()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func setupInputFields() {
        
        
        let stackView = UIStackView(arrangedSubviews: [
            emailTextField,
            usernameTextField,
            passwordTextField
            ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 20),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalToConstant: 200)
            ])
        
    }
}











