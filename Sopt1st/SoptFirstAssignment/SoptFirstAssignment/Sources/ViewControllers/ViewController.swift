//
//  ViewController.swift
//  soptFirstAssignment
//
//  Created by Junhyeon on 2019/09/30.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //  MARK: - Variable and Properties
    @IBOutlet weak var profileLable: UILabel!
    @IBOutlet weak var likeScriptLabel: UILabel!
    var isLike = false
    var cntLike = 0
    
    
    //  MARK: - Views
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var articleImage: UIImageView!
    
    
    //  MARK: -Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 다크모드로 실행시 하트가 안보이기 때문에 다크모드 끄는 기능
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }
        
        profileLable.text = "snu"
        likeScriptLabel.text = "좋아요를 눌러주세요!!"
        
        profileImage.image = UIImage(named: "profile")
        likeImage.image = UIImage(named: "emptyHeart")
        articleImage.image = UIImage(named: "article")
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.width/2.0
        
        likeImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector(("imageTap:"))))
        likeImage.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: Selector(("imageLongTap:"))))
    }

    // MARK: -Helper funcs
    @IBAction func imageTap(_ sender: UITapGestureRecognizer){
        if sender.state == .ended {
            if isLike == false{
                cntLike += 1
                likeImage.image = UIImage(named: "fillHeart")
                likeScriptLabel.text = (profileLable.text)! + "님이 " + String(cntLike) + "번째로 좋아합니다."
                isLike = true
            } else {
                likeImage.image = UIImage(named: "emptyHeart")
                likeScriptLabel.text = "좋아요를 눌러주세요!!"
                isLike = false
            }
            
        }
    }
    
    @IBAction func imageLongTap(_ sender: UILongPressGestureRecognizer){
        if sender.state == .ended{
            likeImage.image = UIImage(named: "arrowheart")
            likeScriptLabel.text = (profileLable.text)! + "님이 찐하게 좋아합니다."
        }
    }
    
}
