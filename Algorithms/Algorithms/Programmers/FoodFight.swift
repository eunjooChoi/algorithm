//
//  FoodFight.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/08.
//

import Foundation

/**
    * 푸드파이트대회
    * https://school.programmers.co.kr/learn/courses/30/lessons/134240?language=swift
    * food 배열의 요소를 2로 나눈 값만큼 문자열에 idx가 추가되도록 구현
 */

class FoodFight {
    func solution(_ food:[Int]) -> String {
        var result = ""
        let devidedFood: [Int] = food.map { $0 / 2 }
        
        for (idx, food) in devidedFood.enumerated() {
            result.append(String(repeating: String(idx), count: food))
        }
        
        let reversedResult = result.reversed()
        
        return result + "0" + reversedResult
    }
}
