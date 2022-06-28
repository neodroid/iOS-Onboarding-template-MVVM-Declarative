//
//  HomescreenController.swift
//  iOS-Onboarding-template-MVVM-Declarative
//
//  Created by Kevin ahmad on 08/06/22.
//

import UIKit

class HomescreenController: UIViewController {
    
    //MARK: - Properties
    
    private lazy var collectionView: UICollectionView = {
      let layout = UICollectionViewFlowLayout()
      layout.minimumLineSpacing = 0
      layout.minimumInteritemSpacing = 0
        
      let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
      collectionView.isScrollEnabled = false
      collectionView.translatesAutoresizingMaskIntoConstraints = false
      return collectionView
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    //MARK: - Selectors
    
    //MARK: - Helpers
    
    func configureUI() {
        collectionView.backgroundColor = .systemGroupedBackground
        view.addSubview(collectionView)
        collectionView.anchor(top:view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor,right: view.rightAnchor)
    }
}
