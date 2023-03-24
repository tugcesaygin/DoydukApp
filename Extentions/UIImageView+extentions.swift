//
//  UIImageView+extentions.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 24.03.2023.
//

import UIKit
import Kingfisher

extension UIImageView{
    func setImage(url: URL){
        self.kf.setImage(with: url)
    }
}
