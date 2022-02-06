//
//  Challenge.swift
//  SpotifyPlayer
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {

        // Comment in incrementally...
                let albumImage = makeImageView(named: "rush")
                let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
                let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        //
                let playButton = makePlayButton()
                let previewStartLabel = makePreviewLabel(withText: "0:00")
                let previewEndLabel = makePreviewLabel(withText: "0:30")
                let progressView = makeProgressView()
        //
                let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        //
                view.addSubview(albumImage)
                view.addSubview(trackLabel)
                view.addSubview(albumLabel)
        //
                view.addSubview(playButton)
                view.addSubview(previewStartLabel)
                view.addSubview(progressView)
                view.addSubview(previewEndLabel)
        //
                view.addSubview(spotifyButton)

        // Start your layout here...

        albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        albumImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        albumImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        albumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//        The trick here is to use the height and width anchors
        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        
        
        trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8).isActive = true
        trackLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8).isActive = true
        albumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8).isActive = true
        playButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 4).isActive = true
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        
        previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        
        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 4).isActive = true
        progressView.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor, constant: -4).isActive = true
        progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        
        spotifyButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 32).isActive = true
        spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
