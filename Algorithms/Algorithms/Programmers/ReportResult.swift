//
//  ReportResult.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/15.
//

import Foundation


// https://school.programmers.co.kr/learn/courses/30/lessons/92334
class ReportResult {
    func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
        // 신고자 - 신고한 사람들로 재분류한 딕셔너리
        var reportList: [String: Set<String>] = [:]
        
        // 유저별 신고 당한 횟수를 저장하는 countList
        var countList: [String: Int] = [:]
        
        // 무작위로 나오는 딕셔너리에서 id의 순서를 보장하기 위한 idIdx 배열
        var idIdx: [String: Int] = [:]
        
        // 결과 배열
        var result: [Int] = [Int](repeating: 0, count: id_list.count)
        
        
        for (idx, name) in id_list.enumerated() {
            countList[name] = 0
            idIdx[name] = idx
        }
        
        for list in report {
            let splitedList = list.split(separator: " ")
            let key = String(splitedList[0])
            let value = String(splitedList[1])
            
            if reportList[key] == nil {
                reportList[key] = [value]
            } else if reportList[key]?.contains(value) == false {
                reportList[key]?.insert(value)
            } else {
                continue
            }
            
            countList[value] = (countList[value] ?? 0) + 1
        }
        
        for (name, count) in countList {
            if count < k { continue }
            
            for list in reportList {
                if list.value.contains(name), let idx = idIdx[list.key] {
                        result[idx] = result[idx] + 1
                }
            }
        }
        
        return result
    }
}
