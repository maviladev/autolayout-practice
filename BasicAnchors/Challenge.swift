//
//  Challenge.swift
//  BasicAnchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    func setupViews() {

        // Comment in incrementally ...
                let offlineLabel = makeLabel(withText: "Offline")
                let offlineSwitch = makeSwitch(isOn: false)
                let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        //
                let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
                let crossfadeMinLabel = makeSubLabel(withText: "0s")
                let crossfadeMaxLabel = makeSubLabel(withText: "12s")
                let crossfadeProgressView = makeProgressView()
        //
                let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
                let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        //
                let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
                let hideSongsSwitch = makeSwitch(isOn: true)
        //
                let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
                let enableNormalizationSwitch = makeSwitch(isOn: true)
        //
                view.addSubview(offlineLabel)
                view.addSubview(offlineSwitch)
                view.addSubview(offlineSublabel)
        //
                view.addSubview(crossfadeLabel)
                view.addSubview(crossfadeMinLabel)
                view.addSubview(crossfadeProgressView)
                view.addSubview(crossfadeMaxLabel)
        //
                view.addSubview(gaplessPlaybackLabel)
                view.addSubview(gaplessPlaybackSwitch)
        //
                view.addSubview(hideSongsLabel)
                view.addSubview(hideSongsSwitch)
        //
                view.addSubview(enableNormalizationLabel)
                view.addSubview(enableNormalizationSwitch)

        // Start your layout here...
        
        offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        
        offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor).isActive = true
        
        offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: 16).isActive = true
        offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: 24).isActive = true
        crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32).isActive = true
        crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        crossfadeMaxLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32).isActive = true
        crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        crossfadeMinLabel.widthAnchor.constraint(equalTo: crossfadeMaxLabel.widthAnchor).isActive = true
        
        crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4).isActive = true
        crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4).isActive = true
        crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor).isActive = true
        
        gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: 32).isActive = true
        gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        

        gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor).isActive = true
        
        hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: 32).isActive = true
        hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor).isActive = true
        
        enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: 32).isActive = true
        enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor).isActive = true
    }
}

