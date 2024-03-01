//
//  ViewController.swift
//  FamilyProject
//
//  Created by Thomas Mullins on 2/29/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func brothersButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showSecondViewController", sender: "Brothers")

    }
    
    @IBAction func sistersButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showSecondViewController", sender: "Sisters")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondViewController" {
            if let destinationVC = segue.destination as? SecondViewController,
               let senderString = sender as? String {
                destinationVC.selectedType = senderString
            }
        }
    }
}
