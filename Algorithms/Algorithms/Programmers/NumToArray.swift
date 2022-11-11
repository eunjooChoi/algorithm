//
//  NumToArray.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/11.
//

import Foundation

/**
 * 자연수 뒤집어 배열로 만들기
 * https://school.programmers.co.kr/learn/courses/30/lessons/12932
 * 주어진 n을 뒤집어 [Int]로 return하는 문제
 */

class NumToArray {
    func solution(_ n:Int64) -> [Int] {
        let numString = String(n)
        let arr: [Int] = numString.map { Int(String($0)) ?? 0 }
        return arr.reversed()
    }
}
