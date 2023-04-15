//
//  RemovePairString.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/15.
//

import Foundation

/**
 * 짝지어 제거하기
 * https://school.programmers.co.kr/learn/courses/30/lessons/12973
 * Stack의 개념을 활용해야 하는 문제.
 */

class RemovePairString {
    func solution(_ s:String) -> Int{
        var stack: [Character] = []
        
        for char in s {
            if stack.isEmpty {
                stack.append(char)
            } else if stack.last == char {
                stack.removeLast()
            } else {
                stack.append(char)
            }
        }
        
        return stack.isEmpty ? 1 : 0
    }
}
