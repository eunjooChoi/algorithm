//
//  StrangeWords.swift
//  Algorithms
//
//  Created by 최은주 on 6/14/24.
//

import Foundation

/**
 * 이상한 문자 만들기
 * https://school.programmers.co.kr/learn/courses/30/lessons/12930
 */

class StrangeWords {
    func solution(_ s:String) -> String {
        var result: String = ""
        var wordIndex: Int = 0
        
        for char in s {
            if char == " " {
                result.append(char)
                wordIndex = 0
                continue
            }
            
            if wordIndex % 2 == 0 {
                result.append(char.uppercased())
            } else {
                result.append(char.lowercased())
            }
            wordIndex += 1
        }
        
        return result
    }
}
