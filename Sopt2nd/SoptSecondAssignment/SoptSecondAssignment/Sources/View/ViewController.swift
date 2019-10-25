//
//  ViewController.swift
//  SoptSecondAssignment
//
//  Created by Junhyeon on 2019/10/23.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var changeBtn: UIButton!
    @IBOutlet weak var surplusBtn: UIButton!
    
    @IBOutlet weak var divisionBtn: UIButton!
    @IBOutlet weak var additionBtn: UIButton!
    @IBOutlet weak var subtractionBtn: UIButton!
    @IBOutlet weak var multiplicationBtn: UIButton!
    @IBOutlet weak var equalBtn: UIButton!
    @IBOutlet weak var dotBtn: UIButton!

    
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBtnRadius()
        setBtnBackgroundColor()
    }
    
    @objc func setBtnRadius() {
        
        resetBtn.layer.cornerRadius = 40
        changeBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        surplusBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        divisionBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        additionBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        subtractionBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        multiplicationBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        equalBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        dotBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        zeroBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        oneBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        twoBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        threeBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        fourBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        fiveBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        sixBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        sevenBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        eightBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
        nineBtn.layer.cornerRadius = 0.5 * resetBtn.bounds.size.width
    }
    
    @objc func setBtnBackgroundColor(){
        resetBtn.backgroundColor = UIColor.lightGray
        changeBtn.backgroundColor = UIColor.lightGray
        surplusBtn.backgroundColor = UIColor.lightGray
        
        divisionBtn.backgroundColor = UIColor.orange
        additionBtn.backgroundColor = UIColor.orange
        additionBtn.backgroundColor = UIColor.orange
        subtractionBtn.backgroundColor = UIColor.orange
        multiplicationBtn.backgroundColor = UIColor.orange
        equalBtn.backgroundColor = UIColor.orange
        
        dotBtn.backgroundColor = UIColor.darkGray
        zeroBtn.backgroundColor = UIColor.darkGray
        oneBtn.backgroundColor = UIColor.darkGray
        twoBtn.backgroundColor = UIColor.darkGray
        threeBtn.backgroundColor = UIColor.darkGray
        fourBtn.backgroundColor = UIColor.darkGray
        fiveBtn.backgroundColor = UIColor.darkGray
        sixBtn.backgroundColor = UIColor.darkGray
        sevenBtn.backgroundColor = UIColor.darkGray
        eightBtn.backgroundColor = UIColor.darkGray
        nineBtn.backgroundColor = UIColor.darkGray

    }

}

