//
//  DetailViewController.swift
//  BurgersMenu
//
//  Created by simpy on 8/12/20.
//  Copyright © 2020 epita. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var burger : Burger!
    
    @IBOutlet weak var imgImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var detialLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard burger != nil else{
           fatalError("Burger is Nill")
        }
        imgImage.image = UIImage(named:burger.image)
        nameLabel.text = burger.name
        priceLabel.text = "€ \(burger.price)"
        detialLabel.text = burger.description
        
       
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
