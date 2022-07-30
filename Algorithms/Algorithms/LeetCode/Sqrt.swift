//
//  Sqrt.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/30.
//

import Foundation

/**
    * 69. Sqrt(x)
    * https://leetcode.com/problems/sqrtx/
    * x의 root를 찾음. 소수점이 있는 경우 버림
    * 8은 2.8xxx이므로 2를 리턴
 */


class SqrtX {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 { return 0 }
        
        var result = 2
        var square = 1
        
        while true {
            square = result * result
            
            if square == x {
                return result
            } else if square > x {
                return result - 1
            } else {
                result += 1
            }
        }
        
        return result
    }
}
