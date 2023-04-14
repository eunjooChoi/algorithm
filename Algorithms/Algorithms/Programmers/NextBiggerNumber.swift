//
//  NextBiggerNumber.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/14.
//

import Foundation

/**
 * 다음 큰 숫자
 * https://school.programmers.co.kr/learn/courses/30/lessons/12911?language=swift
 */

class NextBiggerNumber {
    func solution(_ n:Int) -> Int {
        var nextNum = n + 1
        let n의2진수1의개수 = String(n, radix: 2).filter {$0 != "0" }.count
        var 다음수2진수1의개수 = String(nextNum, radix: 2).filter {$0 != "0" }.count
        
        while n의2진수1의개수 != 다음수2진수1의개수 {
            nextNum = nextNum + 1
            다음수2진수1의개수 = String(nextNum, radix: 2).filter {$0 != "0" }.count
        }
        
        return nextNum
    }
}
