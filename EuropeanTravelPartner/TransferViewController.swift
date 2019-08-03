//
//  TransferViewController.swift
//  EuropeanTravelPartner
//
//  Created by Kirilll Zaikin on 31/07/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class TransferViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    var departure: [String] = ["Prague airport", "Prague hotel"]


    
    @IBOutlet weak var pointOfDeparture: UIPickerView!
    
    @IBOutlet weak var pointOfDestination: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointOfDeparture.dataSource = self
        pointOfDeparture.delegate = self
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return departure.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return departure[row]
    }
    
    
}
