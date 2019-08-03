//
//  ExcursionViewController.swift
//  EuropeanTravelPartner
//
//  Created by Kirilll Zaikin on 26/07/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class ExcursionViewController: UIViewController {
    
    
    @IBOutlet weak var excursionImage: UIImageView!
    
    @IBOutlet weak var excursionAbout: UILabel!
    
    @IBOutlet weak var numberOfPeople: UILabel!
    
    @IBOutlet weak var orderPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func changeNumberOfPeople(_ sender: Any) {
    }
    

    @IBAction func addToBasket(_ sender: Any) {
    }
    
}
