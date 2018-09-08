//
//  ViewController.swift
//  PhoneBook
//
//  Created by Daniel Salib on 9/7/18.
//  Copyright © 2018 pennapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(db.contacts)
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell") as! contactCell
        
        cell.nameLabel.text = db.contacts[indexPath.row].firstName + " " + db.contacts[indexPath.row].lastName
        
        cell.phoneLabel.text = db.contacts[indexPath.row].phoneNumber
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return db.contacts.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = tableView.indexPathForSelectedRow{
            let row = index.row
            let detailVC = segue.destination as? DetailViewController
            detailVC?.contact = db.contacts[row]
        }
    }


}

