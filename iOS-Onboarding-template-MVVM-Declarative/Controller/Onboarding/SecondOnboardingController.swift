//
//  SecondOnboardingController.swift
//  iOS-Onboarding-template-MVVM-Declarative
//
//  Created by Kevin ahmad on 08/06/22.
//

import UIKit

class SecondOnboardingController: UIViewController {
    
    //MARK: - Properties
    
    private let illustrationImage: UIImageView = {
        let il = UIImageView()
        il.contentMode = .scaleAspectFit
        il.clipsToBounds = true
        il.image = UIImage(named: "ilus onboarding 2")
        return il
    }()
    
    private let continueButton:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
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
        label.text = "How many cigarette you consume per day?"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    
    
    private let blackLine: UIPickerView = {
        let line = UIPickerView()
        
        return line
    }()

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        blackLine.delegate = self
        blackLine.dataSource = self
    }

    //MARK: - Selectors

    
    @objc func didClickedContinue() {
        let controller = ThirdOnboardingController()
        navigationController?.pushViewController(controller, animated: true)
    }
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        
        view.addSubview(illustrationImage)
        illustrationImage.anchor(top: view.safeAreaLayoutGuide.topAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 44,paddingLeft: 47,paddingRight: 47)
        
        view.addSubview(label)
        label.anchor(top:illustrationImage.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 40,paddingLeft: 47,paddingRight: 47)
        
        view.addSubview(blackLine)
        blackLine.anchor(top:label.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: -20,paddingLeft: 100,paddingRight: 100)
        
        view.addSubview(continueButton)
        continueButton.anchor(left:view.leftAnchor,bottom: view.safeAreaLayoutGuide.bottomAnchor,right: view.rightAnchor,paddingLeft: 17,paddingBottom: 54,paddingRight: 17)
        
    }
    

    
}

// MARK: - Extension



extension SecondOnboardingController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 500
    }
    
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?  {
            return String(row + 1)
        }
    
}
