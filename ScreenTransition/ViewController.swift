//
//  ViewController.swift
//  ScreenTransition
//
//  Created by 이윤수 on 2021/10/18.
//

import UIKit

class ViewController: UIViewController {

    var btn:UIButton!
    var btn2:UIButton!
    var label:UILabel!
    
    override func viewDidLoad() {
        
        self.view.backgroundColor = .white
        
        btn = UIButton()
        btn.setTitleColor(.black, for: .normal)
        btn.setTitle("present", for: .normal)
        btn.addTarget(self, action: #selector(btnC(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        btn2 = UIButton()
        btn2.setTitleColor(.black, for: .normal)
        btn2.setTitle("nvc", for: .normal)
        btn2.addTarget(self, action: #selector(nvc(_:)), for: .touchUpInside)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        
        label = UILabel()
        label.text = "아직이야"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            btn.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            btn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            btn2.topAnchor.constraint(equalTo: btn.bottomAnchor, constant: 10),
            btn2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            label.topAnchor.constraint(equalTo: btn2.bottomAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
        
        
    }


    @objc func btnC(_ sender:Any){
        
        let pvc = presentVC()
        pvc.senderData = self
    
        self.present(pvc, animated: true)
    }
    
    @objc func nvc(_ sender:Any){
        self.navigationController?.pushViewController(nviewc(), animated: true)
    }
}

extension ViewController : sendData{
    func data(data: String) {
        label.text = data
    }
    
    
}
