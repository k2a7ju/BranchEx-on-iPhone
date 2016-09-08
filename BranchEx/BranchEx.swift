//
//  BranchEx.swift
//  BranchEx
//
//  Created by HIROYUKI SHIRAKAZU on 2016/04/25.
//  Copyright © 2016年 HIROYUKI SHIRAKAZU. All rights reserved.
//

import UIKit

class BranchEx: UIView {
    //描写時に呼ばれる
    override func drawRect(rect: CGRect) {
        //乱数の取得
        let num = Int(arc4random() % 4)
        
        //if文による計算
        var text0 = ""
        if num == 0 {
            text0 = "大吉"
        }
        else if num == 1{
            text0 = "中吉"
        }
        else if num == 2 {
            text0 = "笑吉"
        }
        else {
            text0 = "凶"
        }
        
        //switch文による計算
        var text1 = ""
        switch num {
        case 0:
            text1 = "大吉"
        case 1:
            text1 = "中吉"
        case 2:
            text1 = "小吉"
        default:
            text1 = "凶"
        }
        //表示
        drawString("ifの結果:\(text0)", x: 0, y: 20)
        drawString("swichの結果:\(text1)", x: 0, y: 20+26*2)
    }
    
    func drawString(str: String, x:Int, y:Int){
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x),CGFloat(y)),withAttributes:attrs)
    }
    
    
}
