//
//  FamilyTableViewController.swift
//  FamilyProject
//
//  Created by Thomas Mullins on 3/21/24.
//

import UIKit

class FamilyTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var selectedSibling: String = ""
    
    let cellTitles = ["Sisters", "Brothers"]
       
       override func viewDidLoad() {
           super.viewDidLoad()
           tableView.delegate = self
           tableView.dataSource = self
       }
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return cellTitles.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "SiblingCell", for: indexPath)
           cell.textLabel?.text = cellTitles[indexPath.row]
           return cell
       }
       
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: indexPath)
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            if let destinationVC = segue.destination as? DetailTableViewController,
               let indexPath = sender as? IndexPath {
                destinationVC.selectedSibling = cellTitles[indexPath.row]
            }
        }
    }
    
   }
