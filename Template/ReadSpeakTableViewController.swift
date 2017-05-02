//
//  ReadSpeakTableViewController.swift
//  Template
//
//  Created by StreetCode Academy on 4/26/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit
import Firebase


class ReadSpeakTableViewController: UITableViewController {
    var exercises = [Exercise]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let rootNode = FIRDatabase.database().reference()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        // Configure the cell...
        var tableCell: UITableViewCell?
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "readSpeakCell", for: indexPath) as! ReadSpeakTextTVC
            cell.helloLabel.text = "Hello, how are you?"
            tableCell = cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadSpeakButtonTVC", for: indexPath) as! ReadSpeakButtonTVC
            cell.readSpeakButton.setTitle("Read to me!", for: .normal)
            tableCell = cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadSpeakButtonTVC", for: indexPath) as! ReadSpeakButtonTVC
             cell.readSpeakButton.setTitle("Okay Speak!", for: .normal)
            tableCell = cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "readSpeakCell", for: indexPath) as! ReadSpeakTextTVC
            cell.helloLabel.text = "Hello, haw our you?"
            tableCell = cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadSpeakButtonTVC", for: indexPath) as! ReadSpeakButtonTVC
            cell.readSpeakButton.setTitle("Please correct me!", for: .normal)
            tableCell = cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadSpeakButtonTVC", for: indexPath) as! ReadSpeakButtonTVC
            cell.readSpeakButton.setTitle("New Exercise", for: .normal)
            tableCell = cell
        default:
            tableCell = UITableViewCell()
            
        }

        return tableCell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

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
