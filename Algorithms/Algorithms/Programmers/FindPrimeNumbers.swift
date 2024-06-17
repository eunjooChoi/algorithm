//
//  FindPrimeNumbers.swift
//  Algorithms
//
//  Created by 최은주 on 6/17/24.
//

import Foundation

/**
 *. 소수찾기
 *. https://school.programmers.co.kr/learn/courses/30/lessons/12921
 * 에라토스테네스의 채를 어떻게 알고 계신걸까 다들?
 *  stride from to by (전진하다 ~로부터 ~까지 by만큼)
 */

class FindPrimeNumbers {
    func solution(_ n:Int) -> Int {
        var check = Array(repeating: 0, count: n + 1)
        var cnt = 0

        for i in 2...n {
            // 1. 이미 확인된 배열인지 확인 (= 소수일 때)
            if check[i] == 0 {
                // 2. 확인한 갯수 카운팅 (= 갯수 증가)
                cnt += 1
                
                // 3. i의 배수인 배열의 인덱스를 1로 수정 (= 합성수 제거)
                for j in stride(from: i, to: n + 1, by: i) {
                    check[j] = 1
                }
            }
        }

        return cnt
    }
}
