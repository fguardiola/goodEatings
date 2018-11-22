//
//  RecipeCell.swift
//  GoodEatings
//
//  Created by 67621177 on 21/11/2018.
//  Copyright © 2018 67621177. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       categoryImage.layer.cornerRadius = 10
    }

    func configureCell(category: FoodCategory){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
