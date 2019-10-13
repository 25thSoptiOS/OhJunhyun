//
//  ResultViewController.swift
//  SoptSecondSeminarTwo
//
//  Created by Junhyeon on 2019/10/12.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultEmailLabel: UILabel!
    @IBOutlet weak var resultUpdateLabel: UILabel!
    @IBOutlet weak var resultIntervalLabel: UILabel!
    
    var paramEmail: String = ""
    var paramUpdate: Bool = true
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultEmailLabel.text = paramEmail
        self.resultUpdateLabel.text = (self.paramUpdate == true ? "자동갱신 켜짐" : "자동갱신 꺼짐")
        self.resultIntervalLabel.text = "\(Int(paramInterval)) 분마다 갱신"

    }
    
    @IBAction func dissmissBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
