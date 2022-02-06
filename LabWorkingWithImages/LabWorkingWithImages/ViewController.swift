//
//  ViewController.swift
//  LabWorkingWithImages
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
        
        let image = makeImageView(named: "rush")
        let label = makeLabel(withText: "Title")
        let button = makeButton(withText: "Get Started")
        
        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(button)
        
//        imageViews by themselves have instrinsic size
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant:  8).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 300).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

    func makeImageView(named: String) -> UIImageView {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: named)
        
        // Orientation to which we need to grow/hug
        view.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
        
        return view
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        
        return label
    }
    
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .blue
        config.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        button.configuration = config
        
        let attributedText = NSMutableAttributedString(string: text)
        
        button.setAttributedTitle(attributedText, for: .normal)
        
        return button
    }
}

