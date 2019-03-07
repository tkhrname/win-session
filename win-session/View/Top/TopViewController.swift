//
//  TopViewController.swift
//  win-session
//
//  Created by 渡邊丈洋 on 2019/03/07.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let grayPath = UIBezierPath()
        grayPath.addArc(
            withCenter: CGPoint(x: self.view.frame.width/2, y: self.view.frame.height / 2), // 中心
            radius: 100, // 半径
            startAngle: -1.57, // 開始角度 -1.57(-1.57 ~ 4.713)
            endAngle: 4.713, // 終了角度  4.713(-1.57 ~ 4.713)
            clockwise: true) // 時計回り
        
        let grayLayer = CAShapeLayer()
        grayLayer.path = grayPath.cgPath
        grayLayer.fillColor = UIColor.clear.cgColor // 塗り色
        grayLayer.strokeColor = UIColor(red: 0.80, green: 0.80, blue: 0.80, alpha: 1.0).cgColor // 線の色
        grayLayer.lineWidth = 20.0 // 線の幅
        self.view.layer.addSublayer(grayLayer)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
