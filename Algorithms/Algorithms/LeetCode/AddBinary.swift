//
//  AddBinary.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/29.
//

import Foundation

/**
    * 67. Add Binary
    * https://leetcode.com/problems/add-binary/
    * String으로 들어오는 두 binary를 더한 값을 String으로 반환
    * a = "11", b = "1" --> return "100"
 */


class AddBinary {
    func addBinary(_ a: String, _ b: String) -> String {
        let longerBinaryArr: [String.Element]
        let shortBinaryArr: [String.Element]
        
        if a.count <= b.count {
            longerBinaryArr = Array(b)
            shortBinaryArr = Array(a)
        } else {
            longerBinaryArr = Array(a)
            shortBinaryArr = Array(b)
        }
        
        var result: [Character] = []
        var add = 0
        
        for (idx, longerBinaryChar) in longerBinaryArr.reversed().enumerated() {
            if shortBinaryArr.count - idx - 1 < 0 {
                let longerBinaryInt = Int(longerBinaryChar.description) ?? 0
                let addResult = addResult(longerBinaryInt + add)
                
                result.insert(contentsOf: addResult.0, at: 0)
                add = addResult.1
                
            } else {
                let shortBinaryChar = shortBinaryArr[shortBinaryArr.count - idx - 1]
                let addResult = addResult((Int(longerBinaryChar.description) ?? 0) + (Int(shortBinaryChar.description) ?? 0) + add)
                
                result.insert(contentsOf: addResult.0, at: 0)
                add = addResult.1
            }
        }
        
        if add == 1 {
            result.insert("1", at: 0)
        }
        
        return String(result)
    }
    
    func addResult(_ result: Int) -> (String, Int) {
        let string: String
        let int: Int
        switch result {
        case 2:
            string = "0"
            int = 1
        case 3:
            string = "1"
            int = 1
        default:
            string = String(result)
            int = 0
        }
        
        return (string, int)
    }
}
