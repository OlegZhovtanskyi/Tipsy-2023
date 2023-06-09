//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    var brain = Brain()
    
    //MARK: - Outlets
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPcButton: UIButton!
    @IBOutlet weak var tenPcButoon: UIButton!
    @IBOutlet weak var twentyPcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    //MARK: - Actions
    @IBAction func tipChanged(_ sender: UIButton) {
        isSelectedButton(sender: sender)
        billTextField.endEditing(true)
        brain.tipPercent = brain.strOpt(stringValue: sender.currentTitle)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        brain.numOfPeople = sender.value
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        brain.billValue = brain.strOpt(stringValue: billTextField.text) * 100
        self.performSegue(withIdentifier: "showResult", sender: self)
        
    }
    
    func isSelectedButton(sender: UIButton) {
        let buttons = [zeroPcButton, tenPcButoon, twentyPcButton]
        buttons.forEach { $0?.isSelected = ($0 == sender) }
    }
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
             let destinationVC = segue.destination as! ResultsViewController
            destinationVC.total = "$ " + String(format: "%.2f", (brain.billValue + (brain.billValue * brain.tipPercent)) / brain.numOfPeople)
            destinationVC.settings = "Split between \(splitNumberLabel.text ?? "0") people, with \(brain.tipPercent * 100)% tip."
        }
    }

    
}

