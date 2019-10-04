//
//  SegmentViewController.swift
//  soptFirstSupplementClass
//
//  Created by Junhyeon on 2019/10/03.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    @IBOutlet var leftRightSegControl: UISegmentedControl!
    @IBOutlet var displayLabel: UILabel!
    var selectedSegmentIndex: Int!
    var info: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // String변수를 사용해 segment 별 text를 저장하고 싶다.
        if let contentString = info
        {
            displayLabel.text = contentString
        }
        
        // Integer변수를 사용해 segment 별 index를 저장하고 싶다.
        if let whichSelect = selectedSegmentIndex
        {
            leftRightSegControl.selectedSegmentIndex = whichSelect
        }
    }

}
