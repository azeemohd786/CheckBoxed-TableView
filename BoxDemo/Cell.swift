//
//  Cell.swift
//  BoxDemo
//
//  Created by Mohammed Azeem Azeez on 10/09/2019.
//  Copyright © 2019 J'Overt Matics. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var checkBox: CheckBoxButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
    }
  

}
