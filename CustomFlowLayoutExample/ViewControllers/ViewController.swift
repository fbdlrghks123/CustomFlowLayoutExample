//
//  ViewController.swift
//  CustomFlowLayoutExample
//
//  Created by Ickhwan Ryu on 2020/09/09.
//  Copyright © 2020 Ickhwan Ryu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var heights: [CGFloat] = [
        320.0, 213.5, 213.5, 320.0, 320.0, 213.5, 213.5, 213.5, 213.5, 213.5, 320.0, 320.0,
        320.0, 213.5, 213.5, 320.0, 320.0, 213.5, 213.5, 213.5, 213.5, 213.5, 320.0, 213.5
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView?.collectionViewLayout as? CustomFlowLayout {
            layout.delegate = self
        }
        
        collectionView?.backgroundColor = .clear
        collectionView?.contentInset = UIEdgeInsets(top: 23, left: 16, bottom: 10, right: 16)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return heights.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell",
                                                    for: indexPath as IndexPath) as! CustomCell
      return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemSize = (collectionView.frame.width - (collectionView.contentInset.left + collectionView.contentInset.right + 10)) / 2
        return CGSize(width: itemSize, height: itemSize)
    }
}

extension ViewController: CustomFlowLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView,
                        heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return heights[indexPath.item]
    }
}
