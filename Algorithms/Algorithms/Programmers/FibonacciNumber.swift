//
//  FibonacciNumber.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/18.
//

import Foundation

/**
 * 피보나치 수
 * https://school.programmers.co.kr/learn/courses/30/lessons/12945
 * 나머지 연산의 성질.. 힌트 페이지: https://school.programmers.co.kr/learn/courses/14743/lessons/116435
 */

class FibonacciNumber {
    func solution(_ n:Int) -> Int {
        var fibonacciRemainder = [0, 1, 1, 2]
        let devideValue = 1234567
        
        if n <= 3 {
            return fibonacciRemainder[n]
        }
        
        for i in 4...n {
            fibonacciRemainder.append((fibonacciRemainder[i-1] % devideValue + fibonacciRemainder[i-2] % devideValue) % devideValue)
        }
        
        return fibonacciRemainder[n]
    }
}
