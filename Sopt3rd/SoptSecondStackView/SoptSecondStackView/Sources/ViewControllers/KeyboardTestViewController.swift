//
//  KeyboardTestViewController.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/10/17.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class KeyboardTestViewController: UIViewController {
    
    @IBOutlet weak var testTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
    }
    
}

extension KeyboardTestViewController : UITextFieldDelegate {
    @objc func keyboardWillShow(_ sender: Notification) {
        self.view.frame.origin.y = -150 // Move view 150 points upward
    }
    @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @objc func keyboardWillHide(_ sender: Notification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }
    
}
