//
//  CheckBoxButton.swift
//  BoxDemo
//
//  Created by Mohammed Azeem Azeez on 10/09/2019.
//  Copyright © 2019 J'Overt Matics. All rights reserved.
//

import UIKit
class CheckBoxButton: UIButton {
    
    // Images
    let checkedImage = UIImage(named: "CheckBoxChecked")! as UIImage
    let uncheckedImage = UIImage(named: "CheckBoxUnChecked")! as UIImage
    
    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(uncheckedImage, for: .normal)
            } else {
                self.setImage(checkedImage, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.isUserInteractionEnabled = true
        self.addTarget(self, action: #selector(CheckBoxButton.buttonClicked), for: .touchUpInside)
                self.isChecked = false 
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            if isChecked == true {
                isChecked = false
            } else {
                isChecked = true
            }
        }
    }
    
}
