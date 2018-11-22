//
//  ViewController.swift
//  GoodEatings
//
//  Created by 67621177 on 21/11/2018.
//  Copyright © 2018 67621177. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data = DataSet()
    var categories = [FoodCategory]()
    var categorySelected : FoodCategory!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        categories = data.categories
        
    }

    //table view methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell{
            cell.configureCell(category: categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.categorySelected = categories[indexPath.row]
        performSegue(withIdentifier: "goToRecipes", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination =  segue.destination as? RecipesVC
        destination?.categorySelected = self.categorySelected.title
        
    }
}

