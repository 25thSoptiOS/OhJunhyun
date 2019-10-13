//
//  ViewController.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/10/12.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var logoImgView: UIImageView!
    @IBOutlet weak var idView: UIView!
    @IBOutlet weak var pwView: UIView!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var stackViewCenterY: UIStackView!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginBtn.makeRadiusButton(0.64, .white, 20)
//        textFieldSetting()
    }

//    func textFieldSetting(){
//        idTextField.tintColor = .white
//        pwTextField.tintColor = .white
//    }

}

// 키보드 때문에 가려지지 않게 조정하는 extension
//extension LoginVC : UIGestureRecognizerDelegate {
//    
//    func initGestureRecognizer() {
//        let textFieldTap = UITapGestureRecognizer(target: self, action: #selector(handleTapTextField(_:)))
//        textFieldTap.delegate = self
//        view.addGestureRecognizer(textFieldTap)
//    }
//    
//    // 다른 위치 탭했을 때 키보드 없어지는 코드
//    @objc func handleTapTextField(_ sender: UITapGestureRecognizer) {
//        self.loginUserid.resignFirstResponder()
//        self.loginPassword.resignFirstResponder()
//    }
//    
//    
//    func gestureRecognizer(_ gestrueRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
//        if (touch.view?.isDescendant(of: loginUserid))! || (touch.view?.isDescendant(of: loginPassword))! {
//            
//            return false
//        }
//        return true
//    }
//    
//    // keyboard가 보여질 때 어떤 동작을 수행
//    @objc func keyboardWillShow(_ notification: NSNotification) {
//        
//        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
//        guard let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else { return }
//        
//        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
//        
//        let keyboardHeight: CGFloat // 키보드의 높이
//        
//        if #available(iOS 11.0, *) {
//            keyboardHeight = keyboardFrame.cgRectValue.height - self.view.safeAreaInsets.bottom
//        } else {
//            keyboardHeight = keyboardFrame.cgRectValue.height
//        }
//        
//        // animation 함수
//        // 최종 결과물 보여줄 상태만 선언해주면 애니메이션은 알아서
//        // duration은 간격
//        UIView.animate(withDuration: duration, delay: 0.0, options: .init(rawValue: curve), animations: {
//            
//            self.logoImgView.alpha = 0
//            
//            // +로 갈수록 y값이 내려가고 -로 갈수록 y값이 올라간다.
//            self.stackViewCenterY.constant = -keyboardHeight/2 + 50
//        })
//        
//        self.view.layoutIfNeeded()
//    }
//    
//    // keyboard가 사라질 때 어떤 동작을 수행
//    @objc func keyboardWillHide(_ notification: NSNotification) {
//        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else {return}
//        guard let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else {return}
//        UIView.animate(withDuration: duration, delay: 0.0, options: .init(rawValue: curve), animations: {
//            
//            // 원래대로 돌아가도록
//            self.logoImgView.alpha = 1.0
//            self.stackViewCenterY.constant = 0
//        })
//        
//        self.view.layoutIfNeeded()
//    }
//    
//    
//    // observer
//    func registerForKeyboardNotifications() {
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//    
//    
//    func unregisterForKeyboardNotifications() {
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//}
