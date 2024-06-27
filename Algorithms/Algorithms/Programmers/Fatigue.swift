//
//  Fatigue.swift
//  Algorithms
//
//  Created by 최은주 on 6/27/24.
//

import Foundation

/**
 * 피로도
 * https://school.programmers.co.kr/learn/courses/30/lessons/87946
 * 완전탐색, 혹은 DFS 문제 많이 풀어보기
 */

class Fatigue {
    func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
        var result = 0
        var visited = Array(repeating: false, count: dungeons.count)
        
        func dfs(count: Int, fatigue: Int) {
            if result < count {
                result = count
            }
            for i in 0..<dungeons.count {
                if !visited[i] && dungeons[i][0] <= fatigue {
                    visited[i] = true
                    dfs(count: count + 1, fatigue: fatigue - dungeons[i][1])
                    visited[i] = false
                }
            }
        }
        
        dfs(count: 0, fatigue: k)
        return result
    }
}
