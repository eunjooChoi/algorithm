//
//  MemoryScore.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/03.
//


/**
 * 추억 점수
 * https://school.programmers.co.kr/learn/courses/30/lessons/176963
 */

import Foundation

class MemoryScore {
    func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
        let memoryScore: [Int] = photo.compactMap { arr in
            var score = 0
            for string in arr {
                if let nameIdx = name.firstIndex(of: string) {
                    score += yearning[nameIdx]
                } else {
                    continue
                }
            }
            
            return score
        }
        return memoryScore
    }
}
