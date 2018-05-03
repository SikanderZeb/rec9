//
//  TripImagesVC.swift
//  Rec9
//
//  Created by Sikander Zeb on 5/3/18.
//  Copyright © 2018 Sikander. All rights reserved.
//

import UIKit

class TripImagesVC: BaseVC {

    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1.0
        layout.minimumInteritemSpacing = 1.0
        
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.size.width / 3) - 10, height: UIScreen.main.bounds.size.width / 3)
        collection.collectionViewLayout = layout
        // Do any additional setup after loading the view.
    }
}

extension TripImagesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
}
