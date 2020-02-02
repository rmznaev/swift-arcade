//
//  ProtocolWeatherViewController.swift
//  DemoArcade
//
//  Created by Jonathan Rasmusson Work Pro on 2020-02-02.
//  Copyright © 2020 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class ProcotolDelegateViewController: UIViewController {
    
    let weatherButton: UIButton = {
        let button = makeButton(withText: "Fetch Weather")
        button.addTarget(self, action: #selector(weatherPressed), for: .primaryActionTriggered)
        return button
    }()

    let imageView: UIImageView = {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: "zzz", withConfiguration: configuration)
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let cityLabel: UILabel = {
        let label = makeLabel(withTitle: "City")
        return label
    }()

    let temperaturLabel: UILabel = {
        let label = makeLabel(withTitle: "0C") //  U R HERE
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.backgroundColor = .white
        navigationItem.title = "Protocol Delegate"
        
        view.addSubview(weatherButton)
        view.addSubview(imageView)
        view.addSubview(cityLabel)

        weatherButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weatherButton.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 3).isActive = true
        
        imageView.topAnchor.constraint(equalToSystemSpacingBelow: weatherButton.bottomAnchor, multiplier: 3).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cityLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageView.bottomAnchor, multiplier: 3).isActive = true
    }
    
    @objc func weatherPressed() {
        // fetch weather
    }

}