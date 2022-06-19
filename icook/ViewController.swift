//
//  ViewController.swift
//  icook
//
//  Created by otavio on 15/06/22.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "main2", for: indexPath)
        
        return cell
    }
    

    @IBOutlet weak var meusIngredientesCV: UICollectionView!
    
    @IBOutlet weak var emDestaqueCV: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        meusIngredientesCV.delegate = self
        meusIngredientesCV.dataSource = self
        
        emDestaqueCV.delegate = self
        emDestaqueCV.dataSource = self

        // Do any additional setup after loading the view.
    }


}

