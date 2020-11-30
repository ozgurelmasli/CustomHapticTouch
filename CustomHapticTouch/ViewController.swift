//
//  ViewController.swift
//  CustomHapticTouch
//
//  Created by Mac on 30.11.2020.
//

import UIKit

class ViewController: UIViewController {

    private var button_1 : UIButton!
    
    private var button_2 : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.setButton()
        self.setButton_2()
    }
}
extension ViewController {
    fileprivate func setButton(){
        self.button_1 = UIButton()
        self.button_1.tag = 1
        self.button_1.setTitle("Pattern_1", for: .normal)
        self.button_1.setTitleColor(.white, for: .normal)
        self.button_1.backgroundColor = .systemBlue
        self.view.addSubview(self.button_1)
        self.button_1.translatesAutoresizingMaskIntoConstraints = false
        
        self.button_1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.button_1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.button_1.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7).isActive = true
        self.button_1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.button_1.addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
    }
    fileprivate func setButton_2(){
        self.button_2 = UIButton()
        self.button_2.tag = 2
        self.button_2.setTitle("Pattern_2", for: .normal)
        self.button_2.setTitleColor(.white, for: .normal)
        self.button_2.backgroundColor = .systemBlue
        self.view.addSubview(self.button_2)
        self.button_2.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.button_2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.button_2.topAnchor.constraint(equalTo: self.button_1.bottomAnchor , constant: 10).isActive = true
        self.button_2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7).isActive = true
        self.button_2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        self.button_2.addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
    }
}
//MARK:-> OBJ
extension ViewController {
    @objc
    func buttonTapped(button : UIButton){
        if button.tag == 1 {
            CustomHapticTouch.shared.playHaptic(patterns: .pattern_1)
        }else {
            CustomHapticTouch.shared.playHaptic(patterns: .pattern_2)
        }
    }
}
