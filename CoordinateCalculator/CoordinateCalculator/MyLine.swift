//
//  MyLine.swift
//  CoordinateCalculator
//
//  Created by 조재흥 on 2018. 10. 18..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

extension Int {
    mutating func square() -> Int {
        return self * self
    }
}

struct MyLine {
    private(set) var pointA : MyPoint
    private(set) var pointB : MyPoint
    
    func distanceBetween() -> Double {
        var x = self.pointA.x - self.pointB.x
        var y = self.pointA.y - self.pointB.y
        let squareSumFromXY = Double(x.square() + y.square())
        return squareSumFromXY.squareRoot()
    }
}
