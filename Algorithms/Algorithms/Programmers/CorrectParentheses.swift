//
//  CorrectParentheses.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/16.
//

import Foundation

/**
 * 올바른 괄호
 * https://school.programmers.co.kr/learn/courses/30/lessons/12909
 * 주어진 괄호 문자열이 올바르게 짝지어지는지 확인
 */

class CorrectParentheses {
    func solution(_ s:String) -> Bool {
        var left: [String] = []
        
        for char in s {
            if char == "(" {
                left.append("(")
            }
            
            if char == ")" {
                if left.isEmpty { return false }
                left.removeLast()
            }
        }
        
        return left.isEmpty
    }
}
