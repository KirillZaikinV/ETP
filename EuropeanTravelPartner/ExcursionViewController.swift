//
//  ExcursionViewController.swift
//  EuropeanTravelPartner
//
//  Created by Kirilll Zaikin on 26/07/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class ExcursionViewController: UIViewController {
    
    var i = 1
    var name = "CesKru"

    @IBOutlet weak var excursionImagePageControl: UIPageControl!
    
    @IBOutlet weak var excursionImage: UIImageView!
    
    @IBOutlet weak var excursionAbout: UILabel!
    
    @IBOutlet weak var numberOfPeople: UILabel!
    
    @IBOutlet weak var orderPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        excursionImagePageControl.currentPage = i
        excursionImage.isUserInteractionEnabled = true
        excursionImage.image = UIImage(named: "CesKru\(i)")
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeftAction))
        swipeLeft.direction = .left
        self.excursionImage.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeRightAction))
        swipeRight.direction = .right
        
        self.excursionImage.addGestureRecognizer(swipeRight)
    }
    
    @IBAction func changeNumberOfPeople(_ sender: Any) {
    }
    

    @IBAction func addToBasket(_ sender: Any) {
    }
    
    
    @objc func swipeLeftAction() {
        i += 1
        excursionImage.image = UIImage(named: "CesKru\(i)")
        print("test swipe left")
        excursionImagePageControl.currentPage = i
    }
    
    @objc func swipeRightAction() {
        i -= 1
        excursionImage.image = UIImage(named: "CesKru\(i)")
        print("test swipe left")

    }
    
    
}
