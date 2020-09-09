//
//  CustomCell.swift
//  CustomFlowLayoutExample
//
//  Created by Ickhwan Ryu on 2020/09/09.
//  Copyright © 2020 Ickhwan Ryu. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 6
        containerView.layer.masksToBounds = true
    }
}
