//
//  ViewController.swift
//  win-session
//
//  Created by 渡邊丈洋 on 2019/02/10.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circle = DrawCiercleView(frame: self.view.bounds)
        self.view.addSubview(circle)
    }


}

