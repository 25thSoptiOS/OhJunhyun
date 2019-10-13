//
//  ViewController.swift
//  SoptSecondSeminarTwo
//
//  Created by Junhyeon on 2019/10/12.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var autoChangeLabel: UILabel!
    @IBOutlet weak var autoChangeSwitch: UISwitch!
    @IBOutlet weak var autoChangeMinuteLabel: UILabel!
    @IBOutlet weak var autoChangeMinuteStepper: UIStepper!
    
    var updateBool = true
    var intervalTime = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.isOn {
            self.autoChangeLabel.text = "자동갱신 켜짐"
            updateBool = true
        } else {
            self.autoChangeLabel.text = "자동갱신 꺼짐"
            updateBool = false
        }
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        intervalTime = Int(sender.value)
        autoChangeMinuteLabel.text = String(intervalTime) + " 분 마다"
        
    }
    
    @IBAction func summitBtnTouch(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController else {
            return
        }
        
        view.paramEmail = self.emailTF.text!
        view.paramUpdate = self.autoChangeSwitch.isOn
        view.paramInterval = self.autoChangeMinuteStepper.value
        
        self.present(view, animated: true)
    }
    
}

