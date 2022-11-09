//
//  Hamburger.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/09.
//

import Foundation

/**
 * 햄버거 만들기
 * https://school.programmers.co.kr/learn/courses/30/lessons/133502
 * 주어진 [Int] 배열에서 뺭 - 야채 - 고기 - 빵 순으로 햄버거를 몇 개 만들 수 있는지 묻는 문제
 */

class Hamburger {
    func solution(_ ingredient:[Int]) -> Int {
        let hamburger = "1231"
        var result = 0
        var ingredientStr = ingredient.map { String($0) }.joined(separator: "")
        
        while true {
            guard let range = ingredientStr.range(of: hamburger) else { return result }
            ingredientStr.removeSubrange(range)
            result += 1
        }
        
        return result
    }
}
