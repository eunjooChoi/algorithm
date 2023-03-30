//
//  PandY.swift
//  Algorithms
//
//  Created by 최은주 on 2023/03/30.
//

/**
 * 문자열 내 p와 y의 개수

 * https://school.programmers.co.kr/learn/courses/30/lessons/12916
 */

import Foundation

class PandY {
    func solution(_ s:String) -> Bool {
        let string = s.lowercased()     // 문자열 비교를 위해 lowercased로 변환
        
        let countOfP = string.filter { $0 == "p" }.count
        let countOfY = string.filter { $0 == "y" }.count
        
        if countOfP == 0, countOfY == 0 {
            return true        // 문자열에 P와 Y 모두 없는 경우 true
        } else {
            return countOfP == countOfY
        }
    }
}
