//
//  RowView.swift
//  CustomViewChallenge
//
//  Created by Marcos Avila Rodriguez on 07/02/22.
//  Copyright © 2022 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class RowView: UIView {
    
    var text: String
    var isActive: Bool
    
    init(withText: String, isActive: Bool) {
        self.text = withText
        self.isActive = isActive
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let label = makeLabel(withText: text)
        let toggleSwitch = makeSwitch(isOn: isActive)
        
        addSubview(label)
        addSubview(toggleSwitch)
        
        // Check here, we are not using safearea beacuse controls are related to the view not the frame
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        toggleSwitch.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        toggleSwitch.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
}
