//
//  RecipeDetailsVC.swift
//  GoodEatings
//
//  Created by 67621177 on 21/11/2018.
//  Copyright © 2018 67621177. All rights reserved.
//

import UIKit

class RecipeDetailsVC: UIViewController {
    var recipe : Recipe!
    
    @IBOutlet weak var recipeInstructions: UITextView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recipe.title)
        setUpView()
        
        
        
        // Do any additional setup after loading the view.
    }
    func setUpView(){
        recipeImg.image = UIImage(named: recipe.imageName)
        recipeTitle.text = recipe.title
        recipeInstructions.text = recipe.instructions
    }

}
