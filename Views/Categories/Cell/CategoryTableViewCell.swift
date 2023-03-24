//
//  CategoryTableViewCell.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 19.03.2023.
//

import UIKit
import Kingfisher

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var prefixLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with category : Category ){
        prefixLabel.text = category.prefix
        nameLabel.text = category.name
        iconImageView.kf.setImage(with: category.img_url)
    }
    
}
