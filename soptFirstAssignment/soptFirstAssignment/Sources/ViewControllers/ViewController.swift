//
//  ViewController.swift
//  soptFirstAssignment
//
//  Created by Junhyeon on 2019/09/30.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var profileLable: UILabel!
    @IBOutlet weak var likeScriptLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        likeImage.isUserInteractionEnabled = true
        likeImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector(("touchLike:"))))
    }
    
    @IBAction func touchLike(sender: UITapGestureRecognizer){
        if (sender.state == .ended) {
//                likeImage.image = UIImage(named: "like (1).png")
                likeScriptLabel.text = "SOPT 좋아해요~~"
        }
    }

}

