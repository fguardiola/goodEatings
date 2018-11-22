//
//  RecipeCell.swift
//  GoodEatings
//
//  Created by 67621177 on 21/11/2018.
//  Copyright © 2018 67621177. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImage.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe){
        //set values of image
        recipeImage.image = UIImage(named: recipe.imageName)
    }
    
}
