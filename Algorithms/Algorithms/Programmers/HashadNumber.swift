//
//  HashadNumber.swift
//  Algorithms
//
//  Created by 최은주 on 2022/08/22.
//

import Foundation

class HashadNumber {
    func solution(_ x: Int) -> Bool {
        var sum = 0
        let number = String(x)
        
        for number in number {
            sum += Int(number.description) ?? 0
        }
        
        return x % sum == 0
    }
}
