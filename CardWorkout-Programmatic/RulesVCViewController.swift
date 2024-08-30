//
//  RulesVCViewController.swift
//  CardWorkout-Programmatic
//
//  Created by Sovit Thapa on 2024-08-29.
//

import UIKit

class RulesVCViewController: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let excersiseLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExcerciseLabel()
    }
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            
        ])
    }
    
    func configureRulesLabel(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = """
        The value of each card represents the number of excercises you do.
        
        J = 11, Q = 12, K = 13, A = 14
        """
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 20, weight: .regular)
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            
        ])
    }
    
    func configureExcerciseLabel(){
        view.addSubview(excersiseLabel)
        excersiseLabel.translatesAutoresizingMaskIntoConstraints = false
        excersiseLabel.text = """
        
        ♠️ = Pull ups
        
        ❤️ = Push ups
        
        ♣️ = Sit ups
        
        ♦️ = Jumping Jacks
        """
        excersiseLabel.textAlignment = .center
        excersiseLabel.font = .systemFont(ofSize: 20, weight: .regular)
        excersiseLabel.lineBreakMode = .byWordWrapping
        excersiseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            excersiseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 30),
            excersiseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            excersiseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }

}
