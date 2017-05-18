//
//  CorrectMeTableViewController.swift
//  
//
//  Created by Veronica Adamson on 5/3/17.
//
//

import UIKit

class CorrectMeTableViewController: UITableViewController {

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 11
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        // Configure the cell...
        var tableCell: UITableViewCell?
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 8:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 9:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        case 10:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CorrectMeTextTVC", for: indexPath) as! CorrectMeTextTVC
            tableCell = cell
        default:
            tableCell = UITableViewCell()
            
        }
        
        return tableCell!
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
