//
//  MakeMinValue.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/16.
//

import Foundation

/**
 * 최솟값 만들기
 * https://school.programmers.co.kr/learn/courses/30/lessons/12941
 * A배열과 B배열 두 원소의 곱의 합이 최소가 되는 값을 찾기
 * A배열은 오름차순, B배열은 내림차순으로 정렬해 각 index 원소를 곱한 것의 합이 최솟값이 된다.
 */

class MakeMinValue {
    func solution(_ A:[Int], _ B:[Int]) -> Int {
        let a = A.sorted(by: <)
        let b = B.sorted(by: >)
        var ans = 0
        
        for (idx, num) in a.enumerated() {
            ans += num * b[idx]
        }
        
        return ans
    }
}
