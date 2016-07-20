//
//  HFLog.swift
//  Pods
//
//  Created by DragonCherry on 6/30/16.
//
//

import Foundation


// Common Log Utility
private func printDetail(message: AnyObject) {
    #if DEBUG
        print("(\(String(#file)):\(#line)) \(message)")
    #endif
}

public func log(message: AnyObject?) {
    #if DEBUG
        if let message = message {
            print(message)
        } else {
            printDetail("nil message")
        }
    #endif
}

public func loge(message: AnyObject?) {
    printDetail("[Error]: \(message)")
}

public func loge(error: ErrorType?) {
    printDetail("[Error]: \(error)")
}

public func logw(message: AnyObject?) {
    printDetail("[Warning]: \(message)")
}


// MARK: - Type Casting Utility
public func boolean(object: AnyObject?, defaultValue: Bool = false) -> Bool {
    return object?.boolValue ?? defaultValue
}

public func integer(object: AnyObject?, defaultValue: Int = 0) -> Int {
    return object?.integerValue ?? defaultValue
}

public func float(object: AnyObject?, defaultValue: Float = 0) -> Float {
    return object?.floatValue ?? defaultValue
}

public func cgfloat(object: AnyObject?, defaultValue: CGFloat = 0) -> CGFloat {
    return CGFloat(object?.floatValue ?? defaultValue)
}