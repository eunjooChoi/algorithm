//
//  ValidPalindrome.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/21.
//

import Foundation

/**
 * 125. Valid Palindrome
 * https://leetcode.com/problems/valid-palindrome/
 * Character에 isLetter와 isNumber가 있음을 알고 있자!
 */

class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        let string = s.replacingOccurrences(of: " ", with: "").lowercased().filter { $0.isLetter || $0.isNumber }

        return string == String(string.reversed())
    }
}

