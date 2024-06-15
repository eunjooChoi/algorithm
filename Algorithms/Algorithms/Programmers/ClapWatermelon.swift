//
//  ClapWatermelon.swift
//  Algorithms
//
//  Created by 최은주 on 6/15/24.
//

import Foundation

/**
 * 수박수박수박수박수박수?
 * https://school.programmers.co.kr/learn/courses/30/lessons/12922
 */

class ClapWatermelon {
    func solution(_ n:Int) -> String {
        let odd = "수"
        let even = "박"
        var result = ""
        
        for idx in 1...n {
            let appendChar = idx % 2 == 0 ? even : odd
            result.append(appendChar)
        }
        
        return result
    }
}
