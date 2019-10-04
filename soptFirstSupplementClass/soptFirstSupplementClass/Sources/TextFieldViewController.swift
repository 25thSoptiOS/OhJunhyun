//
//  TextFieldViewController.swift
//  soptFirstSupplementClass
//
//  Created by Junhyeon on 2019/10/03.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.idTextField {
            textField.resignFirstResponder()
            self.pwTextField.becomeFirstResponder()
        }
        textField.resignFirstResponder()
        return true
    }

}

extension TextFieldViewController : UITextFieldDelegate{
    
}
