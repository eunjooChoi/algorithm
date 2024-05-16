//
//  NearestCharacter.swift
//  Algorithms
//
//  Created by 최은주 on 5/16/24.
//

import Foundation

/**
 * 가장 가까운 글자
 * https://school.programmers.co.kr/learn/courses/30/lessons/142086
 * Dictionary가 배열보다 속도가 더 빠르다..!
 */

class NearestCharacter {
    func solution(_ s:String) -> [Int] {
        var result: [Int] = []
        
        for (idx, char) in s.enumerated() {
            let substringIdx = s.index(s.startIndex, offsetBy: idx)
            let newString = s[s.startIndex..<substringIdx]
            if let lastIdx = newString.lastIndex(of: char) {
                let distance = s.distance(from: s.startIndex, to: lastIdx)
                result.append(idx - distance)
            } else {
                result.append(-1)
            }
        }
        return result
    }
}
