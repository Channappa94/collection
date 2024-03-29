//
//  ViewController.swift
//  collection
//
//  Created by IMCS2 on 7/23/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
   //I am getting collection view
    @IBOutlet weak var cv: UICollectionView!
    var count = 9
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
        return count
    }
    //each cell is taken and updated
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
   
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! mycellCollectionViewCell
        cell.myimageView.image = imageArry[indexPath.row % imageArry.count]
        
        return cell
    }
    //Here we make the iages bigger when the user taps on the image
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        image.image = imageArry[indexPath.row % imageArry.count]
    }
    //The loop goes to the extent to which the user scrolls it
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        print(indexPath.item)
        if indexPath.row == count - 1{
            let insertIndexPath = IndexPath(item: count, section: 0)
            count += 1
            cv.insertItems(at: [insertIndexPath])
            cv.reloadData()
            
        }
        
        
    }

}

