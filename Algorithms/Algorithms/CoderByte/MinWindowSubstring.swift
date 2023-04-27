//
//  MinWindowSubstring.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/27.
//

import Foundation

/**
    https://coderbyte.com/results/eunjoo:Min%20Window%20Substring:Swift
 */
class MinWindowSubstring {
    func MinWindowSubstring(_ strArr: [String]) -> String {

      // code goes here
      // Note: feel free to modify the return type of this function

      let string = strArr[0]
      let matchingString = strArr[1]

      var minimumCharacterCounts = matchingString.count

        while minimumCharacterCounts != string.count {
            var start = 0
            
            while start + minimumCharacterCounts <= string.count {
                let startIndex = string.index(string.startIndex, offsetBy: start)
                let endIndex = string.index(startIndex, offsetBy: minimumCharacterCounts)
                let subString = string[startIndex..<endIndex]
                
                var matchingStringCopy = matchingString
                
                for char in subString {
                  if let firstIndex = matchingStringCopy.firstIndex(of: char) {
                    matchingStringCopy.remove(at: firstIndex)
                  }
                }
                
                if matchingStringCopy.isEmpty {
                    return subString.description
                }

                start += 1
            }
            
            minimumCharacterCounts += 1
        }
      return string

    }
}
