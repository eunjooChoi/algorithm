//
//  LengthofLastWord.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/27.
//

import Foundation

/**
    * 58. Length of Last Word
    * https://leetcode.com/problems/length-of-last-word/
    * 공백들로 구분된 주어진 문자열에서 마지막 단어의 글자수를 return
    * "   fly me   to   the moon  "의 경우 마지막 글자인 moon의 글자수 4 반혼
 */

class LengthofLastWord {
    func lengthOfLastWord(_ s: String) -> Int {
        let array = s.split(separator: " ")
        return array.last?.count ?? 0
    }
}
