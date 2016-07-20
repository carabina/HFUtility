//
//  UIColor+HF.swift
//  Pods
//
//  Created by DragonCherry on 6/30/16.
//
//

import Foundation

public extension UIColor {
    
    convenience init(alpha: Float, red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        assert(alpha >= 0 || alpha <= 1, "Invalid alpha component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: CGFloat(alpha))
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgbHex: Int) {
        self.init(
            red: (rgbHex >> 16) & 0xff,
            green: (rgbHex >> 8) & 0xff,
            blue: rgbHex & 0xff)
    }
    
    convenience init(rgbHex: Int, alpha: Float) {
        self.init(
            red: CGFloat((rgbHex >> 16) & 0xff),
            green: CGFloat((rgbHex >> 8) & 0xff),
            blue: CGFloat(rgbHex & 0xff),
            alpha: CGFloat(alpha) / 255.0)
    }
    
    convenience init(argbHex: Int) {
        let alpha: Int = (argbHex >> 24)
        self.init(
            red: CGFloat((argbHex >> 16) & 0xff),
            green: CGFloat((argbHex >> 8) & 0xff),
            blue: CGFloat(argbHex & 0xff),
            alpha: CGFloat(alpha) / 255.0)
    }
}