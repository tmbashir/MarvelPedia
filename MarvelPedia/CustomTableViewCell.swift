//
//  CustomTableViewCell.swift
//  MarvelPedia
//
//  Created by Parker Lewis on 10/28/14.
//  Copyright (c) 2014 CodeFellows. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var customCollectionView: CustomCollectionView!
    var flowlayout: UICollectionViewFlowLayout!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.customCollectionView.registerNib(UINib(nibName: "ComicCell", bundle: NSBundle.mainBundle()), forCellWithReuseIdentifier: "COMIC_CELL")
        self.customCollectionView.registerNib(UINib(nibName: "SeriesCell", bundle: NSBundle.mainBundle()), forCellWithReuseIdentifier: "SERIES_CELL")
        
        self.flowlayout = self.customCollectionView.collectionViewLayout as UICollectionViewFlowLayout

        self.flowlayout.itemSize = CGSize(width: 100, height: 150 + 40)

        // check if device is iPad
        if UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad {
            self.flowlayout.itemSize = CGSize(width: 150, height: 225 + 40)
        }

        self.flowlayout.sectionInset = UIEdgeInsetsMake(8, 8, 8, 8)
    }
}
