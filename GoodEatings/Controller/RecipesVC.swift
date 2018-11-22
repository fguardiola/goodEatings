//
//  RecipesVC.swift
//  GoodEatings
//
//  Created by 67621177 on 21/11/2018.
//  Copyright © 2018 67621177. All rights reserved.
//

import UIKit

class RecipesVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   

    var categorySelected : String!
    var recipes = [Recipe]()
    let data = DataSet()
    var recipeToPass : Recipe!

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set delegates
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        recipes = data.getRecipes(forCategoryTitle: categorySelected)
        print(categorySelected)
    }
    // collectionview methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell{
            cell.configureCell(recipe: recipes[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let viewWidth = view.bounds.width
        
        let cellWidth = viewWidth / 2 - 15
        return CGSize(width: cellWidth, height: cellWidth)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recipeToPass = recipes[indexPath.row]
        performSegue(withIdentifier:"goToRecipeDetails" , sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let daetailsVC = segue.destination as? RecipeDetailsVC{
              daetailsVC.recipe = self.recipeToPass
        }
      
    }
}
