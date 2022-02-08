//
//  Challenge.swift
//  Challenge
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
     
     Challenge: See if you can embed all these controls in a StackView like this.
 
     ┌────────StackView─────────┐
     │                          │
     │        offlineRow        │
     │                          │
     │      offlineSublabel     │
     │                          │   axis = vertical
     │       crossfadeView      │   distribution = fill
     │                          │   alignment = fill
     │        gaplessRow        │   spacing = 20
     │                          │
     │       hideSongsRow       │
     │                          │
     │     normalizationRow     │
     │                          │
     └──────────────────────────┘
     
     */
    func setupViews() {
        let offLineRow = RowView(withText: "Offline", isActive: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossFade = CrossfadeView()
        let gaplessRow = RowView(withText: "Gapless Playback", isActive: true)
        let hideSongsRow = RowView(withText: "Hide Unplayable Songs", isActive: true)
        let normalizationRow = RowView(withText: "Enable Audio Normalization", isActive: true)
        
        let stakcview = makeStackView(withOrientation: .vertical)
        
//        offLineRow.translatesAutoresizingMaskIntoConstraints = false
//        crossFade.translatesAutoresizingMaskIntoConstraints = false
//        gaplessRow.translatesAutoresizingMaskIntoConstraints = false
//        hideSongsRow.translatesAutoresizingMaskIntoConstraints = false
//        normalizationRow.translatesAutoresizingMaskIntoConstraints = false
        
        
        stakcview.addArrangedSubview(offLineRow)
        stakcview.addArrangedSubview(offlineSublabel)
        stakcview.addArrangedSubview(crossFade)
        stakcview.addArrangedSubview(gaplessRow)
        stakcview.addArrangedSubview(hideSongsRow)
        stakcview.addArrangedSubview(normalizationRow)
        
        view.addSubview(stakcview)
        
        
        // Set the anchors of the stackview in order to position in the frame
        stakcview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stakcview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stakcview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

//        offLineRow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
//        offLineRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//        offLineRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//        offlineSublabel.topAnchor.constraint(equalTo: offLineRow.bottomAnchor, constant: margin).isActive = true
//        offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//        offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//        crossFade.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: margin).isActive = true
//        crossFade.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//        crossFade.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//        gaplessRow.topAnchor.constraint(equalTo: crossFade.bottomAnchor, constant: margin).isActive = true
//        gaplessRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//        gaplessRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//        hideSongsRow.topAnchor.constraint(equalTo: gaplessRow.bottomAnchor, constant: margin).isActive = true
//        hideSongsRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//        hideSongsRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
//
//        normalizationRow.topAnchor.constraint(equalTo: hideSongsRow.bottomAnchor, constant: margin).isActive = true
//        normalizationRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
//        normalizationRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        // Add padding to the controls
        stakcview.isLayoutMarginsRelativeArrangement = true
        stakcview.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    }
}



