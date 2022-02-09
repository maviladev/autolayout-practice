//
//  ProgressRow.swift
//  SpotifyPlayer
//
//  Created by Marcos Avila Rodriguez on 08/02/22.
//  Copyright © 2022 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class ProgressRow: UIView {
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    func setupViews() {
        
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()
        
        addSubview(playButton)
        addSubview(previewStartLabel)
        addSubview(progressView)
        addSubview(previewEndLabel)
        
        
        playButton.topAnchor.constraint(equalTo: topAnchor).isActive = true
        playButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: buttonHeight).isActive = true

        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 4).isActive = true
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true

        previewEndLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true

        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 4).isActive = true
        progressView.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor, constant: -4).isActive = true
        progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: buttonHeight)
    }
}
