//
//  ViewController.swift
//  BurgersMenu
//
//  Created by simpy on 8/12/20.
//  Copyright © 2020 epita. All rights reserved.
//

import UIKit


struct Burger {
    let name : String
    let image : String
    let price : Double
    let description : String
    
}
class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    private var burgers = [Burger]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let b1 = Burger(name: "Burger maison", image: "b1",price: 10, description:
            """
            Ingredients:
            4 Petits pains ronds au sésame
            4 Steaks hachés de boeuf
            1 Oignon rouge
            4 tranches Cheddar1 Belle tomate
            """
        )

        let b2 = Burger(name: "Hamburger", image: "b2", price: 13, description:
            """
            Ingredients
            * Pains hamburger
            * Escalope de poulet
            * Mozzarella
            * Tomate
            * Salade
            """
        )
        let b3 = Burger(name: "Burger AuCheddar", image: "b3", price: 19,description:
            """
            Ingredients
            * 4 Pains à burger
            * 480 g Steak haché
            * 4 tranches Cheddar
            * 2 Oignons rouge
            * 2 cuil. à soupe Vinaigre balsamique
            """
        )
        let b4 = Burger(name: "Burger Boeuf", image: "b4", price: 15,description:
            """
            Ingredients
            * 1 Pains à burger
            * 250 g Steak Boeuf
            * 3 tranches Cheddar
            * 1 Oignons rouge
            * 2 cuil. à soupe
            """
        )
        let b5 = Burger(name: "Cheese burger", image: "b5", price: 16,description:
            """
            Ingredients
            * 1 pound fresh ground beef chuck
            * Kosher salt and  black pepper
            * 4 slices yellow  cheese
            * 4 sesame seed hamburger buns
            * 4 tablespoons mayonnase
            """
        )
        let b6 = Burger(name: "American Cheeseburger", image: "b6", price: 17.5,description:
            """
            Ingredients
            * 1 pound fresh ground beef chuck
            * Kosher salt and  black pepper
            * 4 slices yellow American cheese
            * 4 sesame seed hamburger buns
            * 4 tablespoons mayonnase
            """
        )
        let b7 = Burger(name: "Gourmet Burger", image: "b7", price: 18.5,description:
            """
            Ingredients
            * 2 lbs lean ground beef
            * 1 cup breadcrumbs (soft)
            * 1 large onion (finely chopped)
            * 1 large egg
            * 1 1/2 tsp salt
            """
        )
        let b8 = Burger(name: "Vegetarian Burger", image: "b8", price: 12.5,description:
            """
            Ingredients
            * 1 1/2 red onions
            * 1/2 pound mixed fresh mushrooms
            * 3 1/2 ounces rye bread,
            * 1 (15-ounce) can black beans,
            * 1 teaspoon ground coriander.
            """
        )
       
        burgers = [b1,b2,b3,b4,b5,b6,b7,b8]
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVc = segue.destination as? DetailViewController {
            if let cell = sender as? TableViewCell,let indexpath = tableView.indexPath(for: cell){
                detailVc.burger = burgers[indexpath.row]
            }
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return burgers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        let burger = burgers[indexPath.row]
        cell.imgImage.image = UIImage(named:burger.image)
        cell.nameLabel.text = burger.name
        cell.priceLabel.text = "€ \(burger.price)"
        
        return cell
    }
}

