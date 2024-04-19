//
//  ViewController.swift
//  BMICalc
//
//  Created by Anuradha Andriesz on 2024-04-16.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "gotoResults", sender:self)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f",sender.value)
        lblWeight.text = "\(weight)Kg"
    }
    
    @IBAction func hightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f",sender.value)
        lblHeight.text = "\(height)m"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiVal = calculatorBrain.getBMIValue()
            destinationVC.adviceL = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

