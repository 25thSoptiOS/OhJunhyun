//
//  SliderViewController.swift
//  soptFirstSupplementClass
//
//  Created by Junhyeon on 2019/10/03.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    var makeString = ""
    
    @IBOutlet weak var segmentButton: UIButton!
    
    @IBOutlet weak var directionSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentButton.addTarget(self, action: #selector(toSegVC), for: .touchUpInside)
        
    }
    
//    @IBAction func segmentButtonPush(){
//        view = self.storyboard?.instantiateViewController(withIdentifier: )
//    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! SegmentViewController
        
        let situation: String! = directionSegment.titleForSegment(at: directionSegment.selectedSegmentIndex)
        
        destVC.title = situation
        
        makeString = situation
        makeString += " 선택됨"
        
        // ViewController에서 정보를 받아 문자열 출력
        destVC.info = makeString
        
        // ViewController에서 Index를 받아 세그먼트 출력
        destVC.selectedSegmentIndex = directionSegment.selectedSegmentIndex
    }
    
    @IBAction func toSegVC(){
        let view = self.storyboard?.instantiateViewController(withIdentifier: "SegmentViewController") as! SegmentViewController
        view.modalPresentationStyle = .fullScreen
        self.present(view, animated: true, completion: nil)
    }
    
    @IBAction func updateColor(_ sender: UISlider) {
        self.view.backgroundColor = UIColor.init(
            red: CGFloat(self.sliderRed.value),
            green: CGFloat(self.sliderGreen.value),
            blue: CGFloat(self.sliderBlue.value),
            alpha: 1.0
        )
    }
}
