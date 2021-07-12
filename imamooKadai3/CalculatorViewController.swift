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
        let leftInt = Int(leftTextField.text ?? "") ?? 0

        let signedLeftInt: Int
        if leftSwitch.isOn {
            signedLeftInt = -leftInt
        } else {
            signedLeftInt = leftInt
        }

        leftLabel.text = String(signedLeftInt)

        let rightInt = Int(rightTextField.text ?? "") ?? 0

        let signedRightInt: Int
        if rightSwitch.isOn {
            signedRightInt = -rightInt
        } else {
            signedRightInt = rightInt
        }

        rightLabel.text = String(signedRightInt)

        resultLabel.text = String(signedLeftInt + signedRightInt)
    }
}
