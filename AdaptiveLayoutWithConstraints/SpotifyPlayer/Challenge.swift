//
//  Challenge.swift
//  SpotifyPlayer
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    var stackview: UIStackView
    var playerView: PlayerView
    
    init(){
        stackview = makeStackView(withOrientation: .vertical)
        playerView = PlayerView()
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not been initialized")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerForOrientationChanges()
        setupViews()
    }
    
    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(Challenge.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }

    func setupViews() {
        
        stackview.addArrangedSubview(makeAlbumImageView())
        stackview.addArrangedSubview(makePlayerStackView())
        
        view.addSubview(stackview)
        
        stackview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
    func makeAlbumImageView() -> UIImageView {
        let albumImage = makeImageView(named: "rush")
        let heightAnchorConstraint = albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor)
        heightAnchorConstraint.priority = .defaultHigh
        heightAnchorConstraint.isActive = true

        return albumImage
    }

    func makePlayerStackView() -> UIStackView {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8)

        stackView.addArrangedSubview(playerView)

        return stackView
    }
    
    @objc func rotated() {
        if UIDevice.current.orientation.isLandscape {
            stackview.axis = .horizontal
        } else {
            stackview.axis = .vertical
        }

        playerView.adjustForOrientation()
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
