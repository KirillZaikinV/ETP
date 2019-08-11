//
//  ImageTableViewCell.swift
//  EuropeanTravelPartner
//
//  Created by Кирилл Лукьянов on 03/08/2019.
//  Copyright © 2019 Kirill Zaikin. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var excursLabel: UILabel!
    
    @IBOutlet weak var excursPrice: UILabel!
    
    @IBOutlet weak var excursImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
