//
//  ProfileViewController.swift
//  EuropeanTravelPartner
//
//  Created by Kirilll Zaikin on 03/08/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


    @IBAction func registrationButton(_ sender: Any) {
        performSegue(withIdentifier: "registrationSegue", sender: self)

    }
    
    @IBAction func enterButton(_ sender: Any) {
        performSegue(withIdentifier: "profileViewSegue", sender: self)

    }
    
}
