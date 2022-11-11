//
//  EvenAndOdd.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/11.
//

import Foundation

/**
 * 짝수와 홀수
 * https://school.programmers.co.kr/learn/courses/30/lessons/12937
 * 주어진 num이 짝수인지 홀수인지 판별하는 문제. 0은 짝수, 음수의 경우도 홀/짝을 판별할 수 있어야 함.
 */

class EvenAndOdd {
    func solution(_ num:Int) -> String {
        let absNum = abs(num)
        if absNum == 0 { return "Even" }
        return absNum % 2 == 1 ? "Odd" : "Even"
    }
}

