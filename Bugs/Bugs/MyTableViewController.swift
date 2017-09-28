//
//  MyTableViewController.swift
//  Bugs
//
//  Created by Momoko Nakada on 2017-09-25.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    static func scaryFactorToString(scaryFactor :ScaryFactor) -> String {
        var scaryString = ""
        switch(scaryFactor) {
        case .NotScary:
            scaryString = "Not scary"
        case .ALittleScary:
            scaryString = "A little scary"
        case .AverageScary:
            scaryString = "Average scariness"
        case .QuiteScary:
            scaryString = "Quite scary"
        case .Aiiiiieeeee:
            scaryString = "AIIIIIEEEEEEE!!"
        }
        return scaryString
    }
    
    struct ScaryBug {
        let name : String
        var imageName : String
        var howScary : ScaryFactor
        
        init(name: String, imageName : String, howScary: ScaryFactor) {
            self.name = name
            self.imageName = imageName
            self.howScary = howScary
        }
    }

    
    static func bugs() -> [ScaryBug] {
        var bugs = [ScaryBug]()
        bugs.append(ScaryBug(name: "Centipede", imageName: "centipede.jpg", howScary: .AverageScary))
        bugs.append(ScaryBug(name: "Ladybug", imageName: "ladybug.jpg", howScary: .NotScary))
        bugs.append(ScaryBug(name: "Potato Bug", imageName: "potatoBug.jpg", howScary: .QuiteScary))
        bugs.append(ScaryBug(name: "Wolf Spider", imageName: "wolfSpider.jpg", howScary: .Aiiiiieeeee))
        bugs.append(ScaryBug(name: "Bee", imageName: "bee.jpg", howScary: .QuiteScary))
        bugs.append(ScaryBug(name: "Beetle", imageName: "beetle.jpg", howScary: .ALittleScary))
        bugs.append(ScaryBug(name: "Burrito Insect", imageName: "burritoInsect.jpg", howScary: .AverageScary))
        bugs.append(ScaryBug(name: "Caterpillar", imageName: "caterpillar.jpg", howScary: .NotScary))
        bugs.append(ScaryBug(name: "Cicada", imageName: "cicada.jpg", howScary: .AverageScary))
        bugs.append(ScaryBug(name: "Cockroach", imageName: "cockroach.jpg", howScary: .QuiteScary))
        bugs.append(ScaryBug(name: "Exoskeleton", imageName: "exoskeleton.jpg", howScary: .QuiteScary))
        bugs.append(ScaryBug(name: "Fly", imageName: "fly.jpg", howScary: .NotScary))
        bugs.append(ScaryBug(name: "Giant Moth", imageName: "giantMoth.jpg", howScary: .AverageScary))
        bugs.append(ScaryBug(name: "Grasshopper", imageName: "grasshopper.jpg", howScary: .Aiiiiieeeee))
        bugs.append(ScaryBug(name: "Mosquito", imageName: "mosquito.jpg", howScary: .QuiteScary))
        bugs.append(ScaryBug(name: "Praying Mantis", imageName: "prayingMantis.jpg", howScary: .NotScary))
        bugs.append(ScaryBug(name: "Roach", imageName: "roach.jpg", howScary: .QuiteScary))
        bugs.append(ScaryBug(name: "Robber Fly", imageName: "robberFly.jpg", howScary: .QuiteScary))
        bugs.append(ScaryBug(name: "Scorpion", imageName: "scorpion.jpg", howScary: .Aiiiiieeeee))
        bugs.append(ScaryBug(name: "Shield Bug", imageName: "shieldBug.jpg", howScary: .AverageScary))
        bugs.append(ScaryBug(name: "Stag Beetle", imageName: "stagBeetle.jpg", howScary: .AverageScary))
        bugs.append(ScaryBug(name: "Stink Bug", imageName: "stinkbug.jpg", howScary: .ALittleScary))
        return bugs
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
