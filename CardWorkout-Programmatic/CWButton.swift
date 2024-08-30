//
//  CWButton.swift
//  CardWorkout-Programmatic
//
//  Created by Sovit Thapa on 2024-08-29.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String, systemImageName: String) {
        super.init(frame: .zero)

        var config = UIButton.Configuration.filled()
        config.title = title
        config.image = UIImage(systemName: systemImageName)
        config.imagePadding = 8
        config.baseBackgroundColor = backgroundColor
        config.baseForegroundColor = .white
        config.cornerStyle = .medium

        self.configuration = config

        titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        translatesAutoresizingMaskIntoConstraints = false
    }
}

