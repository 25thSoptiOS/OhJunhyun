//
//  ViewController.swift
//  SoptSecondSeminar
//
//  Created by Junhyeon on 2019/10/12.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
//    @IBOutlet weak var navigationBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        pinkButton.addTarget(self, action: #selector(pinkButtonTouch), for: .touchUpInside)
//        greenButton.addTarget(self, action: #selector(greenButtonTouch), for: .touchUpInside)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
    }

//    @IBAction func pinkButtonTouch(){
//        let view = self.storyboard?.instantiateViewController(withIdentifier: "PinkViewController") as! PinkViewController
//        view.modalPresentationStyle = .fullScreen
//        self.present(view, animated: true, completion: nil)
//    }
//
//    @IBAction func greenButtonTouch(){
//        let view = self.storyboard?.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
//        view.modalPresentationStyle = .fullScreen
//        self.present(view, animated: true, completion: nil)
//
//    }

}
