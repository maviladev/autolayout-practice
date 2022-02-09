//
//  PlayerView.swift
//  SpotifyPlayer
//
//  Created by Marcos Avila Rodriguez on 08/02/22.
//  Copyright © 2022 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class PlayerView: UIView {
    
    var stackview: UIStackView
    var topAnchorConstraint = NSLayoutConstraint()
    var centerYConstraint = NSLayoutConstraint()
    
    init() {
        stackview = makeStackView(withOrientation: .vertical)
        stackview.distribution = .fillProportionally
        
        super.init(frame: .zero)
        
        setupViews()
        setupInitialOrientation()
    }
    
    func setupViews() {
        
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playerView = ProgressRow()
        let spotifyButton = makeSpotifyButtonCustomView()
        
        addSubview(stackview)
        
        stackview.addArrangedSubview(trackLabel)
        stackview.addArrangedSubview(albumLabel)
        stackview.addArrangedSubview(playerView)
        stackview.addArrangedSubview(spotifyButton)
        
        stackview.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackview.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    func makeSpotifyButtonCustomView() -> UIView {
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")

        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        container.addSubview(spotifyButton)

        spotifyButton.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        spotifyButton.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true

        return container
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 180)
    }
    
    func setupInitialOrientation() {
        topAnchorConstraint = stackview.topAnchor.constraint(equalTo: topAnchor)
        centerYConstraint = stackview.centerYAnchor.constraint(equalTo: centerYAnchor)

        if UIDevice.current.orientation.isPortrait {
            topAnchorConstraint.isActive = true
            centerYConstraint.isActive = false
        } else {
            topAnchorConstraint.isActive = false
            centerYConstraint.isActive = true
        }
    }
    
    func adjustForOrientation() {
        if UIDevice.current.orientation.isLandscape {
            topAnchorConstraint.isActive = false
            centerYConstraint.isActive = true
        } else {
            topAnchorConstraint.isActive = true
            centerYConstraint.isActive = false
        }
    }
}
