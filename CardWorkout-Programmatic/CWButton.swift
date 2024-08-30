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
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title : String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    

    func configure(){
        layer.cornerRadius = 10
        titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
