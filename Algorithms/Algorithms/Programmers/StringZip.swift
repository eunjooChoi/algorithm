//
//  StringZip.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/17.
//

import Foundation

/**
    * 문자열 압축
    * https://school.programmers.co.kr/learn/courses/30/lessons/60057
    * 메서드로 들어온 s를 단위별(1글자, 2글자...)로 잘라 배열로 만든 뒤 중복 문자열을 숫자로 치환해 새로운 문자열을 만들도록 함
    * 단위별로 모두 결과를 체크하고 가장 짧은 문자열의 길이를 반환.
 */

class StringZip {
    func solution(_ s:String) -> Int {
        var result = Int.max
        for splitCount in 1...s.count {
            var subStr = ""
            var splitedArr: [String] = []
            
            for (idx, char) in s.enumerated() {
                let remainder = (idx + 1) % splitCount
                if idx > 0, remainder == 0 {
                    
                    if splitCount == 1 {
                        splitedArr.append(subStr)
                        subStr.removeAll()
                        subStr.append(char)
                    } else {
                        subStr.append(char)
                        splitedArr.append(subStr)
                        subStr.removeAll()
                    }
                    
                    continue
                }
                
                if remainder < splitCount {
                    subStr.append(char)
                }
            }
            
            splitedArr.append(subStr)
            
            var resultStr = ""
            var repeatStr = splitedArr[0]
            var repeatCount = 1
            
            for (idx, string) in splitedArr.enumerated() {
                if idx == 0 { continue }
                if string != repeatStr {
                    let reapetCountStr = repeatCount == 1 ? "" : "\(repeatCount)"
                    resultStr.append(reapetCountStr + repeatStr)
                    repeatStr = string
                    repeatCount = 1
                } else {
                    repeatCount += 1
                }
            }
            
            let reapetCountStr = repeatCount == 1 ? "" : "\(repeatCount)"
            resultStr.append(reapetCountStr + repeatStr)
            
            
            if result > resultStr.count {
                result = resultStr.count
            }
        }
        
        return result
    }
}
