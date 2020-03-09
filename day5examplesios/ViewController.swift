//
//  ViewController.swift
//  day5examplesios
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tblview: UITableView!
    
    lazy var personList = [Person]()
    let cellId = print(String(describing: CustomerTableViewCell.self))

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        // Do any additional setup after loading the view.
    }
    private func getData()
    {
        personList.removeAll()
        personList.append(Person(custId: 1, firstName: "roop", lastName: "virk", gender: "female", salary: "12330"))
        personList.append(Person(custId: 2, firstName: "monica", lastName: "sharma", gender: "female", salary: "1234567"))
    }
}
    
    extension ViewController : UITableViewDelegate, UITableViewDataSource
    {
        
        
        func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int) -> Int
        {
            return self.personList.count
        }
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(100.0)
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerTableViewCell", for: indexPath) as! CustomerTableViewCell
            let person = personList[indexPath.row]
            
            cell.firstName.text = person.firstName
            cell.lastName.text = person.lastName
            cell.Salary.text = person.salary
            return cell
        }
    
    }



