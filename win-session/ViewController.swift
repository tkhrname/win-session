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
        
        let grayPath = UIBezierPath()
        print(Double.pi * 2)
        grayPath.addArc(
            withCenter: CGPoint(x: self.view.frame.width/2, y: self.view.frame.height / 2), // 中心
            radius: 100, // 半径
            startAngle: 0, // 開始角度
//            endAngle: .pi * 2.0, // 終了角度
            endAngle: 6.283, // 終了角度
            clockwise: true) // 時計回り
        
        let grayLayer = CAShapeLayer()
        grayLayer.path = grayPath.cgPath
        grayLayer.fillColor = UIColor.clear.cgColor // 塗り色
        grayLayer.strokeColor = UIColor(red: 0.80, green: 0.80, blue: 0.80, alpha: 1.0).cgColor // 線の色
        grayLayer.lineWidth = 20.0 // 線の幅
        self.view.layer.addSublayer(grayLayer)
    }


}

