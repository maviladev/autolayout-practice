//
//  ViewController.swift
//  LabCHCR
//
//  Created by Marcos Avila Rodriguez on 05/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }

    func setupViews() {
        let label = makeLabel(withText: "Name")
        let textField = makeTextField(withPlaceHolderText: "Enter name here")
        
        view.addSubview(label)
        view.addSubview(textField)
        
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        textField.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 8).isActive = true
        textField.centerYAnchor.constraint(equalTo: label.centerYAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
        
    }
    
    func makeTextField(withPlaceHolderText text: String) -> UITextField {
        let textField = UITextField()
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .lightGray
        
        return textField
    }
    
}

