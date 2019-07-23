//
//  ViewController.swift
//  collection
//
//  Created by IMCS2 on 7/23/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    count = 9
    @IBOutlet weak var image: UIImageView!
    var imageArry = [UIImage(named: "cartoon_one"),
                     UIImage(named: "cartoon_two"),
                     UIImage(named: "cartoon_three"),
                     UIImage(named: "cartoon_four"),
                     UIImage(named: "cartoon_five"),
                     UIImage(named: "cartoon_six"),
                     UIImage(named: "cartoon_seven"),
                     UIImage(named: "cartoon_eight"),
                     UIImage(named: "cartoon_nine"),
                     UIImage(named: "cartoon_ten")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArry.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! mycellCollectionViewCell
        cell.myimageView.image = imageArry[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! mycellCollectionViewCell
        cell.myimageView.image = imageArry[indexPath.row]
        image.image = cell.myimageView.image
        if indexPath.row == 9{
            var set = 0
            indexPath.row = set
        }
        
    }

}

