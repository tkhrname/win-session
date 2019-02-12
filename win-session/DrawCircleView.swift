//
//  DrawView.swift
//  win-session
//
//  Created by 渡邊丈洋 on 2019/02/12.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation
import UIKit

class DrawCiercleView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = UIColor.clear;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        // 円
        let circle: UIBezierPath = UIBezierPath(
            arcCenter: CGPoint(x: 0, y: 0),
            radius: 100,
            startAngle: 0,
            endAngle: CGFloat(Double.pi),
            clockwise: true
        )
        // 内側の色
        UIColor(red: 0, green: 0, blue: 1, alpha: 0.3).setFill()
        // 内側を塗りつぶす
        circle.fill()
        
        
        // 線を塗りつぶす
        circle.stroke()
    }
}
