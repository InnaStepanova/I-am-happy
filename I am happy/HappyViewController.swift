//
//  HappyViewController.swift
//  I am happy
//
//  Created by Лаванда on 02.02.2023.
//

import UIKit
import Foundation

final class HappyViewController: UIViewController {
    
    private lazy var iAmHappyLabel: UILabel = {
        let label = UILabel()
        label.text = "I am Happy"
        label.textColor = .systemIndigo
        label.font = UIFont(name: "Helvetica", size: 40)
        return label
    }()
    
    
    private lazy var happyImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "happy")
        return image
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layoutViews()
    }
}

extension HappyViewController {
    private func layoutViews() {
        view.addSubview(iAmHappyLabel)
        iAmHappyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(happyImage)
        happyImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            happyImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            happyImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            happyImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            happyImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            happyImage.heightAnchor.constraint(equalTo: happyImage.widthAnchor),
            
            iAmHappyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iAmHappyLabel.bottomAnchor.constraint(equalTo: happyImage.topAnchor, constant: -40)
        ])
    }
}
