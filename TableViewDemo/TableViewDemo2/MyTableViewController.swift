//
//  MyTableViewController.swift
//  TableViewDemo2
//
//  Created by Derrick on 2017-09-26.
//  Copyright © 2017 com.Derrick. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    let continents = SetContinent.continentSets()
    let cellId = "CountryCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Countries"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return continents.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return continents[section].countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let country = continents[indexPath.section].countries[indexPath.row]
        cell.textLabel?.text = country.name
        
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return continents[section].name
    }
 



    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */



}
