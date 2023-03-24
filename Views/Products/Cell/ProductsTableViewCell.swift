//
//  ProductsTableViewCell.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 24.03.2023.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with product: Product){
        titleLabel.text = product.name
        priceLabel.text = "\(product.price)"
        descLabel.text = product.description
        iconImageView.setImage(url : product.imageUrl)
    }
}
