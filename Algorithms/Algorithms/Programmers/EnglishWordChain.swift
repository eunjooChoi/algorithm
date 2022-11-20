//
//  EnglishWordChain.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/20.
//

import Foundation

/**
 * 영어 끝말잇기
 * https://school.programmers.co.kr/learn/courses/30/lessons/12981
 */

class EnglishWordChain {
    func solution(_ n:Int, _ words:[String]) -> [Int] {
        var copyWords = words
        var popWords: [String] = []
        var repeatCount: Int = 1
        
        while copyWords.isEmpty == false {
            let word = copyWords.removeFirst()
            
            if popWords.isEmpty {
                popWords.append(word)
                continue
            }
            
            if popWords.last?.last != word.first || popWords.contains(word) {
                // 틀린 사람 결정
                let result = (popWords.count + 1) % n
                let dropout = result == 0 ? n : result
                return [dropout, repeatCount]
            }
            
            popWords.append(word)
            
            if popWords.count % n == 0 { repeatCount += 1 }
        }
        
        return [0, 0]
    }
}
