//
//  MaxMinValue.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/15.
//

import Foundation

/**
 * 최댓값과 최솟값
 * https://school.programmers.co.kr/learn/courses/30/lessons/12939
 * 숫자가 나열된 문자열에서 가장 작은 값과 가장 큰 값을 찾는다.
 */

class MaxMinValue {
    func solution(_ s:String) -> String {
        let stringNumbers = s.split(separator: " ")
        let numbers = stringNumbers.map { Int($0) ?? 0 }.sorted(by: <)
        
        return "\(numbers.first ?? 0) \(numbers.last ?? 0)"
    }
}
