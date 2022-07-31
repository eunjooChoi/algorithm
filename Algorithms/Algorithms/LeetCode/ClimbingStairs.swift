//
//  ClimbingStairs.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/31.
//

import Foundation

/**
    * 70. Climbing Stairs
    * https://leetcode.com/problems/climbing-stairs/
    * n 칸짜리 계단을 오를 때 1칸 또는 2칸씩 오를 수 있는데, 몇 가지의 방법으로 오를 수 있는지 확인하는 문제
 */

class ClimbingStairs {
    func climbStairs(_ n: Int) -> Int {
        var result = [1, 1]
        
        for num in 1..<n {
            result.append(result[num] + result[num-1])
        }
        
        return result.last ?? 0
    }
}
