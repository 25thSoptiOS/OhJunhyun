//
//  ViewController.swift
//  soptFirstSupplementClass
//
//  Created by Junhyeon on 2019/10/03.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "candle-on")
        textLable.text = "candle is On"

    }
    
    @IBAction func `switch`(_ sender: AnyObject) {
        
        if sender.isOn {
            imageView.image = UIImage(named: "candle-on")
            textLable.text = "candle is On"
        } else {
            imageView.image = UIImage(named: "candle-off")
            textLable.text = "candle is Off"
        }
        
    }
    

}

