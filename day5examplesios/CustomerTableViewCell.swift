//
//  CustomerTableViewCell.swift
//  day5examplesios
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imgPerson: UIImageView!
    
    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var Salary: UILabel!
    func setData(person : Person)
    {
        firstName.text = person.firstName
        lastName.text = person.lastName
        Salary.text = person.salary
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
