//
//  JadenCase.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/15.
//

import Foundation

/**
 * JadenCase 문자열 만들기
 * https://school.programmers.co.kr/learn/courses/30/lessons/12951
 * JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 단, 첫 문자가 알파벳이 아닐 때에는 이어지는 알파벳은 소문자로 변경.
 * s를 순회하면서 이전 문자가 공백이면서 현재 글자가 글자인 경우 대문자, 이전 문자가 공백이 아닌데 현재 문자가 글자인 경우 소문자로 변경
 */

class JadenCase {
    func solution(_ s:String) -> String {
        var beforeCharacter: String = " "
        var result: String = ""
        
        s.forEach { char in
            if beforeCharacter == " ", char.isLetter {
                result.append(char.uppercased())
            } else if beforeCharacter != " ", char.isLetter {
                result.append(char.lowercased())
            } else {
                result.append(char)
            }
            
            beforeCharacter = String(char)
        }
        
        return result
    }
}
