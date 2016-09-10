//
//  ViewController.swift
//  Youtub
//
//  Created by Anand tellabati on 10/09/16.
//  Copyright © 2016 Anand tellabati. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundVisualView: UIVisualEffectView!
    
    private var insertData = Insert.dummyData()
    var collectionCellID = "CollectionCell"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notify"
        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.whiteColor()
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
      //  self.automaticallyAdjustsScrollViewInsets = false
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
      return insertData.count
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    @available(iOS 6.0, *)
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
      let  cell = collectionView.dequeueReusableCellWithReuseIdentifier(collectionCellID, forIndexPath: indexPath) as! CollectionCell
        
        cell.insert = self.insertData[indexPath.item]
        
        return cell
    }

}

