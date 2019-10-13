//
//  ViewController.swift
//  soptFirstSeminar
//
//  Created by Junhyeon on 2019/09/28.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstButton.addTarget(self, action: #selector(touchSecondButton), for: .touchUpInside)
        
    }
    
    @objc func touchSecondButton(){
        firstLabel.text! = "인사하기"
    }
    
//    @objc func toucheFirstButton(){
//        view = self.storyboard?.instantiateViewController(withIdentifier: SecondViewController)
        
        
//    }
    
    
    
}

