//
//  Challenge.swift
//  CustomViewChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
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

    /*
     
     Challenge here is to take the various controls and practice extracting components as subViews (UIViews).

     Two good candidates for extraction are the:

      - RowView (label and a switch)
      - CrossfadeView (label, progressbar, and max min label)
     
     ┌───────────────┐        ┌───────────────┐
     │               │        │               │
     │               ├────────▶    RowView    │ x4
     │               │        │               │
     │               │        └───────────────┘
     │   Challenge   │ extract
     │               │
     │               │        ┌───────────────┐
     │               │        │               │
     │               ├────────▶ CrossfadeView │ x1
     │               │        │               │
     └───────────────┘        └───────────────┘
     
     See if you can extract those into their own custom UIViews and then lay those out.
     
     */
    func setupViews() {
//        let offlineLabel = makeLabel(withText: "Offline")
//        let offlineSwitch = makeSwitch(isOn: false)
        
//

//
//        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
//        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
//
//        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
//        let hideSongsSwitch = makeSwitch(isOn: true)
//
//        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
//        let enableNormalizationSwitch = makeSwitch(isOn: true)
//
//        view.addSubview(offlineLabel)
//        view.addSubview(offlineSwitch)
//        view.addSubview(offlineSublabel)
//

//
//        view.addSubview(gaplessPlaybackLabel)
//        view.addSubview(gaplessPlaybackSwitch)
//
//        view.addSubview(hideSongsLabel)
//        view.addSubview(hideSongsSwitch)
//
//        view.addSubview(enableNormalizationLabel)
//        view.addSubview(enableNormalizationSwitch)
//
//        offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
//        offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//
//        offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor).isActive = true
//        offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//
//
//
//        gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: spacing).isActive = true
//        gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//
//        gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor).isActive = true
//        gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//        hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: spacing).isActive = true
//        hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//
//        hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor).isActive = true
//        hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//        enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: spacing).isActive = true
//        enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//
//        enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor).isActive = true
//        enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        let offLineRow = RowView(withText: "Offline", isActive: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossFade = CrossFade()
        let gaplessRow = RowView(withText: "Gapless Playback", isActive: true)
        let hideSongsRow = RowView(withText: "Hide Unplayable Songs", isActive: true)
        let normalizationRow = RowView(withText: "Enable Audio Normalization", isActive: true)
        
//        offlineSublabel.topAnchor.constraint(equalTo: offLineRow.bottomAnchor, constant: margin).isActive = true
//        offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//        offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        offLineRow.translatesAutoresizingMaskIntoConstraints = false
        crossFade.translatesAutoresizingMaskIntoConstraints = false
        gaplessRow.translatesAutoresizingMaskIntoConstraints = false
        hideSongsRow.translatesAutoresizingMaskIntoConstraints = false
        normalizationRow.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(offLineRow)
        view.addSubview(offlineSublabel)
        view.addSubview(crossFade)
        view.addSubview(gaplessRow)
        view.addSubview(hideSongsRow)
        view.addSubview(normalizationRow)

        offLineRow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
        offLineRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offLineRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        offlineSublabel.topAnchor.constraint(equalTo: offLineRow.bottomAnchor, constant: margin).isActive = true
        offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true

        crossFade.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: margin).isActive = true
        crossFade.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        crossFade.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        gaplessRow.topAnchor.constraint(equalTo: crossFade.bottomAnchor, constant: margin).isActive = true
        gaplessRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        gaplessRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        hideSongsRow.topAnchor.constraint(equalTo: gaplessRow.bottomAnchor, constant: margin).isActive = true
        hideSongsRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        hideSongsRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true

        normalizationRow.topAnchor.constraint(equalTo: hideSongsRow.bottomAnchor, constant: margin).isActive = true
        normalizationRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        normalizationRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        
        
    }
}


