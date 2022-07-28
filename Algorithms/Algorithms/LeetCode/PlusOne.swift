//
//  PlusOne.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/28.
//

import Foundation

/**
    * 66. Plus One
    * https://leetcode.com/problems/plus-one/
    * Int 배열을 받아 숫자로 바꾼 뒤 + 1한 값을 다시 Int 배열로 반환
    * digits = [1, 2, 3] 인 경우 123 + 1을 한 124를 [1, 2, 4] 로 반환한다.
 */

class PlusOne {
    func plusOne(_ digits: [Int]) -> [Int] {
        var plusOneDigits = digits
        
        guard let last = plusOneDigits.last else { return digits }
        
        if last + 1 < 10 {
            let plusOne = last + 1
            plusOneDigits[plusOneDigits.count - 1] = plusOne
            
            return plusOneDigits
        }
        
        var add = 0
        for (idx, plusOneDigit) in plusOneDigits.reversed().enumerated() {
            let originIdx = plusOneDigits.count - idx - 1
            
            if idx == 0, plusOneDigit + 1 == 10 {
                plusOneDigits[originIdx] = 0
                add = 1
                continue
            }
            
            if plusOneDigit + add < 10 {
                plusOneDigits[originIdx] = plusOneDigit + add
                add = 0
                break
            } else {
                plusOneDigits[originIdx] = 0
                add = 1
            }
        }
        
        if add == 1 {
            plusOneDigits.insert(1, at: 0)
        }
        
        return plusOneDigits
    }
}
