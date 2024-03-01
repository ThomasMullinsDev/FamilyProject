//
//  SecondViewController.swift
//  FamilyProject
//
//  Created by Thomas Mullins on 2/29/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var brotherStackView: UIStackView!
    @IBOutlet weak var sisterStackView: UIStackView!
    
    @IBOutlet weak var halfSistersLabel: UILabel!
    @IBOutlet weak var fullSistersLabel: UILabel!
    
    var selectedType: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        halfSistersLabel.text = "Lianna: Age 33 \nAlexa: Age unknown"
        fullSistersLabel.text = "Faith: Age 22 \nAngel: Age 19 \nGrace: Age 17 \nHope: Age 15"
        guard let selectedType = selectedType else {
            return
        }
        
        brotherStackView.isHidden = true
        sisterStackView.isHidden = true
        
        if selectedType == "Brothers" {
            brotherStackView.isHidden = false
        } else if selectedType == "Sisters" {
            sisterStackView.isHidden = false
        }
    }
}
