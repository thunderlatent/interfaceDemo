//
//  collectionViewCell.swift
//  interfaceDemo
//
//  Created by 陳裕銘 on 2019/6/26.
//  Copyright © 2019 yuming. All rights reserved.
//

import UIKit

class tableViewcellCollectionViewCell: UICollectionViewCell {
     // 背景照片
    @IBOutlet weak var imageView: UIImageView!
//        {
//        didSet
//        {
//            imageView.layer.cornerRadius = 30.0
//            imageView.clipsToBounds = true
//        }
//    }
    @IBOutlet weak var generalLabel: UILabel!
    {
        didSet
        {
            generalLabel.textColor = .white
        }
    }// 類別標簽
    @IBOutlet weak var titleLabel: UILabel!
        {
        didSet
        {
            titleLabel.textColor = .white
        }
    }    // 主標題
    @IBOutlet weak var subTitleLabel: UILabel!
        {
        didSet
        {
            subTitleLabel.textColor = .white
        }
    }// 副標題
}
