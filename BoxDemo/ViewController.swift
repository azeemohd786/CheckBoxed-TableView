//
//  ViewController.swift
//  BoxDemo
//
//  Created by Mohammed Azeem Azeez on 10/09/2019.
//  Copyright © 2019 J'Overt Matics. All rights reserved.
//

import UIKit
var rowsWhichAreChecked = [NSIndexPath]()
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var checkListArray = ["iPhone 5", "iPhone 5S", "iPhone SE", "iPhone 6", "iPhone 7", "iPhone 7S", "iPhone 8", "iPhone X", "iPhone Xr", "iPhone XS", "Other Phones", "Used Phones"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.allowsMultipleSelection = true
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkListArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60.00
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        cell.label.text = self.checkListArray[indexPath.row]
        let isRowChecked = rowsWhichAreChecked.contains(indexPath as NSIndexPath)
        
        if(isRowChecked == true)
        {
            cell.checkBox.isChecked = true
            cell.checkBox.buttonClicked(sender: cell.checkBox)
        }else{
            cell.checkBox.isChecked = false
            cell.checkBox.buttonClicked(sender: cell.checkBox)
        }
    
    return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath as IndexPath) as! Cell
        cell.contentView.backgroundColor = UIColor.white 
        // cross checking for checked rows
        if(rowsWhichAreChecked.contains(indexPath as NSIndexPath) == false){
            cell.checkBox.isChecked = true
            cell.checkBox.buttonClicked(sender: cell.checkBox)
            
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath as IndexPath) as! Cell
        cell.checkBox.isChecked = false
        cell.checkBox.buttonClicked(sender: cell.checkBox)
        // remove the indexPath from rowsWhichAreCheckedArray
        if let checkedItemIndex = rowsWhichAreChecked.firstIndex(of: indexPath as NSIndexPath){
            rowsWhichAreChecked.remove(at: checkedItemIndex)
        }
        
    }
    
    

}

