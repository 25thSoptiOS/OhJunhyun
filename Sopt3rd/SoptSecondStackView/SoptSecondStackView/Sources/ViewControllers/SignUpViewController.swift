//
//  SignUpViewController.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/11/02.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var nameTextFiel: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupBtn.addTarget(self, action: #selector(signup), for: .touchUpInside)
        cancelBtn.addTarget(self, action: #selector(cancel), for: .touchUpInside)
    }
    
    @objc func signup(){
        // 로그인 서버 통신 구현 코드
        guard let id = idTextField.text else { return }
        guard let pwd = pwTextField.text else { return }
        guard let name = nameTextFiel.text else { return }
        guard let phone = phoneTextField.text else { return }
        
        SignupService.shared.signup(id, pwd, name, phone) {
            data in
            
            switch data {
                
            case .success:
                print("회원가입 성공")
                self.dismiss(animated: true, completion: nil)
                
            case .requestErr(let message):
                //                self.simpleAlert(title: "로그인 실패", message: "\(message)")
                print("\(message)")
                
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
    
    @objc func cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
