//
//  ThirdOnboardingController.swift
//  iOS-Onboarding-template-MVVM-Declarative
//
//  Created by Kevin ahmad on 08/06/22.
//

import UIKit

class ThirdOnboardingController: UIViewController {
    
    //MARK: - Properties
    
    private let illustrationImage: UIImageView = {
        let il = UIImageView()
        il.contentMode = .scaleAspectFit
        il.clipsToBounds = true
        il.image = UIImage(named: "ilus onboarding 3")
        return il
    }()
    
    private let continueButton:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Start your journey", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .primaryBlue
        button.heightAnchor.constraint(equalToConstant: 54).isActive = true
        button.layer.cornerRadius = 18
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.addTarget(self, action: #selector(didClickedContinue), for: .touchUpInside)
        return button
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "What is your goals to stop smoking?"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    private let blackLine: UIView = {
        let line = UIView()
        line.backgroundColor = .black
        line.setDimensions(width: 500, height: 2)
        
        return line
    }()

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    //MARK: - Selectors

    
    @objc func didClickedContinue() {
        
        let controller = HomescreenController()
        
        controller.modalPresentationStyle = .fullScreen
//        let nav = UINavigationController(rootViewController: controller)
//        nav.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        
        view.addSubview(illustrationImage)
        illustrationImage.anchor(top: view.safeAreaLayoutGuide.topAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 44,paddingLeft: 47,paddingRight: 47)
        
        view.addSubview(label)
        label.anchor(top:illustrationImage.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 40,paddingLeft: 47,paddingRight: 47)
        
        view.addSubview(blackLine)
        blackLine.anchor(top:label.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 40,paddingLeft: 47,paddingRight: 47)
        
        view.addSubview(continueButton)
        continueButton.anchor(left:view.leftAnchor,bottom: view.safeAreaLayoutGuide.bottomAnchor,right: view.rightAnchor,paddingLeft: 17,paddingBottom: 54,paddingRight: 17)
        
    }

    
}

