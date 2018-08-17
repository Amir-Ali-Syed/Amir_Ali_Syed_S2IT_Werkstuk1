//
//  TableViewController.swift
//  Amir_Ali_Syed_S2IT_Werkstuk1
//
//  Created by Amir Ali Syed on 30/04/2018.
//  Copyright © 2018 Amir Ali Syed. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var personen = [Persoon]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let persoon1 = Persoon(naam: "Tony", voornaam: "Stark", img: "tonystark", gsm: "9883990247", adres: "Malibu Point 10880", coordinaat1:50.863131 , coordinaat2:4.330533)
        personen.append(persoon1)
        
        let persoon2 = Persoon(naam: "Steve", voornaam: "Rogers", img: "steverogers", gsm: "9857440253", adres: "569 Leaman Place", coordinaat1:50.242345 , coordinaat2:4.684009)
        personen.append(persoon2)
        
        let persoon3 = Persoon(naam: "Black", voornaam: "Panther", img: "blackpanther", gsm: "095674720", adres: "Wakanda street 21", coordinaat1:50.519605 , coordinaat2: 4.370981)
        personen.append(persoon3)
        
        let persoon4 = Persoon(naam: "Peter", voornaam: "Quil", img: "peterquil", gsm: "0483440747", adres: "Lorrainstraat 73", coordinaat1:50.932631 , coordinaat2: 4.802274)
        personen.append(persoon4)
        
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
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = personen[indexPath.row].naam
        cell.detailTextLabel?.text = personen[indexPath.row].voornaam
        cell.imageView?.image = UIImage(named: personen[indexPath.row].img)

        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailLink" {
            let vc = segue.destination as! Detail
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.detail = personen[(indexPath?.row)!]
        }
    }
    

}
