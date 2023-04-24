//
//  SingleNumber.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/24.
//

import Foundation

/**
 * 136. Single Number
 * https://leetcode.com/problems/single-number/
 */

class SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        var copyNums = nums
        
        for _ in copyNums {
            let a = copyNums.removeFirst()
            if copyNums.firstIndex(of: a) == nil {
                return a
            } else {
                copyNums.append(a)
            }
        }
        
        return 0
    }
}
