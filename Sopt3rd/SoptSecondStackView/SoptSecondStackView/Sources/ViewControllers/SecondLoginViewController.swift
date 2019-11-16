//
//  SecondLoginViewController.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/10/20.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class SecondLoginViewController: UIViewController {
    
    @IBOutlet weak var logoImgView: UIImageView!
    @IBOutlet weak var idView: UIView!
    @IBOutlet weak var pwView: UIView!
    @IBOutlet weak var idLine: UIView!
    @IBOutlet weak var loginUserid: UITextField!
    @IBOutlet weak var loginPassword: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var stackViewCenterY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initGestureRecognizer()
        loginBtn.makeButtonRadius(0.64, .white, 20)
        
        idLine.layer.borderWidth = 20
        
        loginBtn.addTarget(self, action: #selector(login), for: .touchUpInside)
        signupBtn.addTarget(self, action: #selector(signup), for: .touchUpInside)
    }
    
    @objc func login(){
        // 로그인 서버 통신 구현 코드
        guard let id = loginUserid.text else { return }
        guard let pwd = loginPassword.text else { return }
        
        LoginService.shared.login(id, pwd) {
            data in
            
            switch data {
                
            case .success(let data):
                
                // DataClass 에서 받은 유저 정보 반환
                let user_data = data as! DataClass
                
                // 사용자의 토큰, 이름, 이메일, 전화번호 받아오기
                // 비밀번호는 안 받아와도 됨
                UserDefaults.standard.set(user_data.userIdx, forKey: "token")
                UserDefaults.standard.set(user_data.name, forKey: "name")
                UserDefaults.standard.set(user_data.phone, forKey: "phone")
                let secondStory = UIStoryboard(name: "SecondMain", bundle: nil)
                let main = secondStory.instantiateViewController(withIdentifier: "TabBarVC")
                
                self.present(main, animated: true)
                
            case .requestErr(let message):
//                self.simpleAlert(title: "로그인 실패", message: "\(message)")
                print("로그인 실패")
            case .pathErr:
                print(".pathErr")
                
            case .serverErr:
                print(".serverErr")
                
            case .networkFail:
//                self.simpleAlert(title: "로그인 실패", message: "네트워크 상태를 확인해주세요.")
                print("네트워크 로그인 실패")
            }
        }
    }
    
    @objc func signup(){
        guard let main = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") else {return}
        
        self.present(main, animated: true)

    }
    
    
    // 키보드 제어하는 메소드
    override func viewWillAppear(_ animated: Bool) {
        registerForKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        unregisterForKeyboardNotifications()
    }
    
}


extension SecondLoginViewController : UIGestureRecognizerDelegate {
    
    func initGestureRecognizer() {
        let textFieldTap = UITapGestureRecognizer(target: self, action: #selector(handleTapTextField(_:)))
        textFieldTap.delegate = self
        view.addGestureRecognizer(textFieldTap)
    }
    
    // 다른 위치 탭했을 때 키보드 없어지는 코드
    @objc func handleTapTextField(_ sender: UITapGestureRecognizer) {
        self.loginUserid.resignFirstResponder()
        self.loginPassword.resignFirstResponder()
    }
    
    
    func gestureRecognizer(_ gestrueRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if (touch.view?.isDescendant(of: loginUserid))! || (touch.view?.isDescendant(of: loginPassword))! {
            return false
        }
        return true
    }
    
    // keyboard가 보여질 때 어떤 동작을 수행
    @objc func keyboardWillShow(_ notification: NSNotification) {
        
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
        guard let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else { return }
        
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        
        let keyboardHeight: CGFloat // 키보드의 높이
        
        if #available(iOS 11.0, *) {
            keyboardHeight = keyboardFrame.cgRectValue.height - self.view.safeAreaInsets.bottom
        } else {
            keyboardHeight = keyboardFrame.cgRectValue.height
        }
        
        // animation 함수
        // 최종 결과물 보여줄 상태만 선언해주면 애니메이션은 알아서
        // duration은 간격
        UIView.animate(withDuration: duration, delay: 0.0, options: .init(rawValue: curve), animations: {
            
            self.logoImgView.alpha = 0
            
            // +로 갈수록 y값이 내려가고 -로 갈수록 y값이 올라간다.
            self.stackViewCenterY.constant = -keyboardHeight/2 + 50
        })
        
        self.view.layoutIfNeeded()
    }
    
    // keyboard가 사라질 때 어떤 동작을 수행
    @objc func keyboardWillHide(_ notification: NSNotification) {
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else {return}
        guard let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else {return}
        UIView.animate(withDuration: duration, delay: 0.0, options: .init(rawValue: curve), animations: {
            
            // 원래대로 돌아가도록
            self.logoImgView.alpha = 1.0
            self.stackViewCenterY.constant = 0
        })
        
        self.view.layoutIfNeeded()
    }
    
    
    // observer
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    func unregisterForKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}

