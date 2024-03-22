//
//  DetailTableViewController.swift
//  FamilyProject
//
//  Created by Thomas Mullins on 3/22/24.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var selectedSibling: String?
        var detailItems: [String] = []

        override func viewDidLoad() {
            super.viewDidLoad()
            if selectedSibling == "Brothers" {
                detailItems = ["Kevin: Age 31", "Braden: Age 28"]
            } else if selectedSibling == "Sisters" {
                detailItems = ["Lianna: Age 33", "Alexa: Age unknown", "Faith: Age 22", "Angel: Age 19", "Grace: Age 17", "Hope: Age 15"]
            }
            tableView.reloadData()
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return detailItems.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)
            cell.textLabel?.text = detailItems[indexPath.row]
            return cell
        }

    }
