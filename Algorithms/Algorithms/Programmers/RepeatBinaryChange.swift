//
//  RepeatBinaryChange.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/17.
//

import Foundation

/**
 * 이진 변환 반복하기
 * https://school.programmers.co.kr/learn/courses/30/lessons/70129
 * s에서 0을 뺀 나머지의 1의 길이를 이진수로 변환한 값이 새로운 s가 된다. s가 1이 될 때까지 반복한 횟수와 제거된 0의 개수를 구하는 문제
 */

class RepeatBinaryChange {
    func solution(_ s:String) -> [Int] {
        var repeatCount = 0
        var zeroCount = 0
        
        var string = s
        
        while string != "1" {
            let stringLength = string.count
            string = string.replacingOccurrences(of: "0", with: "")
            zeroCount = zeroCount + (stringLength - string.count)
            string = String(string.count, radix: 2)
            repeatCount += 1
        }
        
        return [repeatCount, zeroCount]
    }
}
