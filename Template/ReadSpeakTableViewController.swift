//
//  ReadSpeakTableViewController.swift
//  Template
//
//  Created by StreetCode Academy on 4/26/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit
import Firebase
import Speech

class ReadSpeakTableViewController: UITableViewController, SFSpeechRecognizerDelegate {
    var exercises = [Exercise]()
    var exerciseIndex = 0
    var microphoneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Insert Voice-to-Text Code
        let speakIndexPath = IndexPath(row: 2, section: 0)
        let speakButtonCell = self.tableView.dequeueReusableCell(withIdentifier: "ReadSpeakButtonTVC", for: speakIndexPath) as! ReadSpeakButtonTVC
        let speakButton = speakButtonCell.readSpeakButton
        self.microphoneButton = speakButton
        
        let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))
        
        
        speakButton?.isEnabled = false  //2
        
        speechRecognizer?.delegate = self  //3
        print("Setup")

        
        SFSpeechRecognizer.requestAuthorization { (authStatus) in  //4
            
            var isButtonEnabled = false
            
            switch authStatus {  //5
            case .authorized:
                isButtonEnabled = true
                
            case .denied:
                isButtonEnabled = false
                print("User denied access to speech recognition")
                
            case .restricted:
                isButtonEnabled = false
                print("Speech recognition restricted on this device")
                
            case .notDetermined:
                isButtonEnabled = false
                print("Speech recognition not yet authorized")
            }
            
            OperationQueue.main.addOperation() {
                self.microphoneButton.isEnabled = isButtonEnabled
            }
        }
        
        
        
        // Finish Insert Voice-to-Text Code
    
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let rootNode = Database.database().reference()
        let exercisesNode = rootNode.child("Exercises")
        exercisesNode.observe(.childAdded) { (snapshot: DataSnapshot) in
            let exerciseID = snapshot.key
            let exercise = Exercise(id: exerciseID, dictionary: snapshot.value as AnyObject)
            self.exercises.append(exercise)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadSpeakTextTVC", for: indexPath) as! ReadSpeakTextTVC
            cell.helloLabel.text = exercises.count > 0 ? exercises[exerciseIndex].text : "Fine weather, today."
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadSpeakTextTVC", for: indexPath) as! ReadSpeakTextTVC
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
        
    
    
//        if indexPath.row == 4 {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier:     "correctmevc") as! CorrectMeTableViewController
//    
//            navigationController?.pushViewController(vc,
//                                                     animated: true)
//        }
    }
    
    
//    else if indexPath.row == 2 {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    let vc = storyboard.instantiateViewController(withIdentifier: "languagevc") as! LanguageViewController
//    
//    navigationController?.pushViewController(vc,
//    animated: true)
//    }
    
    

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

    @IBAction func onButton(_ sender: UIButton) {
        if sender.currentTitle == "New Exercise" {
            if exerciseIndex + 1 < exercises.count {
                exerciseIndex = exerciseIndex + 1
                tableView.reloadData()
            }
        }
        else if sender.currentTitle == "Please correct me!" {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "correctmevc") as! CorrectMeTableViewController
                
            navigationController?.pushViewController(vc,animated: true)
            
        }
    }


    
}
