//
//  ProtocolFactory.swift
//  CoordinateCalculator
//
//  Created by KIMMINSIK on 2018. 9. 4..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct ProcotolFactory {
    static func convertProtocol(_ points: [MyPoint]) throws -> MyPointConvertible {
        switch points.count {
        case 1:
            return points[0]
        case 2:
            let line = MyLine(
                pointA: points[0],
                pointB: points[1])
            print(line)
            return line as MyPointConvertible
        default:
            break
        }
        throw ErrorMessage.Message.excessInputValue
    }
}
