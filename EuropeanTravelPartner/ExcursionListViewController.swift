//
//  ExcursionListViewController.swift
//  EuropeanTravelPartner
//
//  Created by Kirilll Zaikin on 31/07/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class ExcursionListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var placeList: [String] = ["CeskyKrumlov", "vienn"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImageTableViewCell
        cell.excursLabel.text = placeList[indexPath.row]
        cell.excursImage.image = UIImage(named: placeList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
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
