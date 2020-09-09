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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView?.collectionViewLayout as? CustomFlowLayoutExample {
            layout.delegate = self
        }
        
        collectionView?.backgroundColor = .clear
        collectionView?.contentInset = UIEdgeInsets(top: 23, left: 16, bottom: 10, right: 16)
    }
}
