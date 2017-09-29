//
//  TableViewController.swift
//  MyTableViewController
//
//  Created by Momoko Nakada on 2017-09-27.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
    }

    // MARK: - Table view data source
    let imageNames = ["Mario.jpg", "MarioHat.jpg", "Mushroom.jpg","Egg.jpg","Goomba.jpg","ChainChomp.jpg"]
    let imageTitles = ["Mario", "Mario Hat", "Mushroom","Egg","Goomba","ChainChomp"]
    let imageDescriptions = [
        "So cute!",
        "Really cute!!",
        "Freezing cute!!!",
        "Cute!",
        "Quite cute!!",
        "Super cute!"
    ]
    let imageRate = "RateStar.png"

    // -------------------------------------------------------
    
    // 1) How many sections does the table view have?
    // 2) How many rows does each section of the table view have?
    // 3) How does each cell of the table view look like?
    
    // -------------------------------------------------------
    
    // 1) How many sections does the table view have?
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // 2) How many rows does each section of the table view have?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNames.count
    }
    
    // 3) How does each cell of the table view look like? = Create the actual table view cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //1.Create the Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        
        //2.Look up the data item that corresponds to the indexPath
        //3.Set up the cell, these times
        cell.myImageView.image = UIImage(named: imageNames[indexPath.row])
        cell.myTitleLabel.text = imageTitles[indexPath.row]
        cell.myDescriptionLabel.text = imageDescriptions[indexPath.row]
        cell.myRateStar.image = UIImage(named: imageRate)
        
        //4. Return the cell
        return cell
    }
}
