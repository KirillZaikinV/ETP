//
//  ExcursionListViewController.swift
//  EuropeanTravelPartner
//
//  Created by Kirilll Zaikin on 31/07/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class ExcursionListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // var placeList: [String] = ["Чески Крумлов", "Вена", "Карловы Вары"]
    
    var placeList = [Excursion]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        setUpExcursion()
    }
    
    func setUpExcursion() {
        placeList.append(Excursion(name: "Карловы Вары", price: "30 EUR", image: "Карловы Вары"))
        placeList.append(Excursion(name: "Вена", price: "45 EUR", image: "Вена"))
        placeList.append(Excursion(name: "Чески Крумлов", price: "40 EUR", image: "Чески Крумлов"))
        placeList.append(Excursion(name: "Кутна Гора", price: "25 EUR", image: "Кутна Гора"))
    }
    
    // экскурсии
    class Excursion {
        let name: String
        let price: String
        let image: String
        
        init(name: String, price: String, image: String) {
        self.name = name
        self.price = price
        self.image = image
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImageTableViewCell
        cell.excursLabel.text = placeList[indexPath.row].name
        cell.excursImage.image = UIImage(named: placeList[indexPath.row].image)
        cell.excursPrice.text = placeList[indexPath.row].price
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}
