//
//  AddTwoNumbers.swift
//  Algorithms
//
//  Created by 최은주 on 6/19/24.
//

import Foundation

/**
 *. 두 개 뽑아서 더하기
 *. https://school.programmers.co.kr/learn/courses/30/lessons/68644
 * i의 다음 index부터 체크하면 된다
 */

class AddTwoNumbers {
    func solution(_ numbers:[Int]) -> [Int] {
        var result: Set<Int> = []
        
        for i in 0..<numbers.count {
            for j in i+1..<numbers.count {
                print("\(i), \(j)")
                result.insert(numbers[i] + numbers[j])
            }
        }
        
        return result.sorted()
    }
}
