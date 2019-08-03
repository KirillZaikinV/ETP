//
//  ExcursionListViewController.swift
//  EuropeanTravelPartner
//
//  Created by Kirilll Zaikin on 31/07/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class ExcursionListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func kvExcursion(_ sender: Any) {
        performSegue(withIdentifier: "excBookingView", sender: self)
    }
    
   
    @IBAction func ckExcursion(_ sender: Any) {
        performSegue(withIdentifier: "excBookingView", sender: self)
    }
    
    @IBAction func vienExcursion(_ sender: Any) {
        performSegue(withIdentifier: "excBookingView", sender: self)
    }
    
    
    
}
