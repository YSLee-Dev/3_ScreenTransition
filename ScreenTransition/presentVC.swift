//
//  present.swift
//  ScreenTransition
//
//  Created by 이윤수 on 2021/10/18.
//

import UIKit

protocol sendData:AnyObject {
    func data(data:String)
}

class presentVC:UIViewController{
    
    var back : UIButton!
    weak var senderData:sendData?
    
    override func viewDidLoad() {
        self.view.backgroundColor = .black
        
        
        back = UIButton()
        back.setTitleColor(.white, for: .normal)
        back.setTitle("back", for: .normal)
        back.addTarget(self, action: #selector(back(_:)), for: .touchUpInside)
        back.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(back)
        
        NSLayoutConstraint.activate([
            back.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            back.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
        
    }
    
    @objc func back(_ sender:Any){
        senderData?.data(data: "WELCOME BACK")
        self.dismiss(animated: true)
    }
    
}
