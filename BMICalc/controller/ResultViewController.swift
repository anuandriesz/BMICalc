//
//  ResultViewController.swift
//  BMICalc
//
//  Created by Anuradha Andriesz on 2024-04-17.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var advice: UILabel!
    @IBOutlet weak var bmiValue: UILabel!
    var bmiVal: String?
    var adviceL: String?
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = bmiVal
        advice.text = adviceL
        view.backgroundColor = color
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
