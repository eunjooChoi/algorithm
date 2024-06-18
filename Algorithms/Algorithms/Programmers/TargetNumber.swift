//
//  TargetNumber.swift
//  Algorithms
//
//  Created by 최은주 on 6/18/24.
//

import Foundation

/**
 *. 타겟 넘버
 *. https://school.programmers.co.kr/learn/courses/30/lessons/43165
 * 재귀 탈출 조건은 모든 배열 요소를 다 돌았을 때만 체크하면 된다
 */

class TargetNumber {
    var result = 0

    func solution(_ numbers:[Int], _ target:Int) -> Int {
        dfs(numbers: numbers, index: 0, target: target, sum: numbers[0])
        dfs(numbers: numbers, index: 0, target: target, sum: -numbers[0])
        return result
    }
    
    func dfs(numbers:[Int], index: Int, target: Int, sum: Int) {
        let nextIndex = index + 1
        if nextIndex >= numbers.count {
            if sum == target {
                result += 1
            }
            return
        }
        
        dfs(numbers: numbers, index: nextIndex, target: target, sum: sum + numbers[nextIndex])
        dfs(numbers: numbers, index: nextIndex, target: target, sum: sum - numbers[nextIndex])
    }
}
