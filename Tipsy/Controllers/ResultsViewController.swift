//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Oleg Zhovtanskyi on 08/06/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var total = ""
    var settings = ""
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    
    //MARK: - Outlets
    
    
    
    
    
    //MARK: - Action
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = total
        settingsLabel.text = settings
    }


}
