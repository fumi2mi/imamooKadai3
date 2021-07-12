//
//  ViewController.swift
//  imamooKadai3
//
//  Created by Fumitaka Imamura on 2021/07/12.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var leftLabel: UILabel!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var rightLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func buttonPressed(_ sender: UIButton) {
        var leftInt = Int(leftTextField.text ?? "") ?? 0
        if leftSwitch.isOn {
            leftInt = -leftInt
        }
        leftLabel.text = String(leftInt)

        var rightInt = Int(rightTextField.text ?? "") ?? 0
        if rightSwitch.isOn {
            rightInt = -rightInt
        }
        rightLabel.text = String(rightInt)

        resultLabel.text = String(leftInt + rightInt)
    }
}
