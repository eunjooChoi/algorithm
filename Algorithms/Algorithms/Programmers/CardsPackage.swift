//
//  CardsPackage.swift
//  Algorithms
//
//  Created by 최은주 on 2023/03/31.
//

import Foundation

/**
 * 카드 뭉치
 * https://school.programmers.co.kr/learn/courses/30/lessons/159994
 */

class CardsPakage {
    func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
        var goalSentenceArr = goal
        var copyCards1 = cards1
        var copyCards2 = cards2
        
        while !goalSentenceArr.isEmpty {
            
            if copyCards1.isEmpty, copyCards2.isEmpty { return "No" }
            
            let word = goalSentenceArr.removeFirst()
            
            if copyCards1.first == word {
                copyCards1.removeFirst()
                continue
            } else {
                if copyCards2.first == word {
                    copyCards2.removeFirst()
                    continue
                } else {
                    return "No"
                }
            }
        }
        
        return "Yes"
    }
}
