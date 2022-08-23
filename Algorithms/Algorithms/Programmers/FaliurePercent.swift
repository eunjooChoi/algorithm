//
//  FaliurePercent.swift
//  Algorithms
//
//  Created by 최은주 on 2022/08/22.
//

import Foundation

class FailurePercent {
    func solution(_ N:Int, _ stages:[Int]) -> [Int] {
        var stagesFailurePercent: [Int: Double] = [:]
        
        for i in 1..<N+1 {
            stagesFailurePercent[i] = 0
        }
        
        var copyStages = stages.sorted()
        
        for i in 1..<N+1 {
            let failPerson = copyStages.filter { $0 == i }.count
            
            stagesFailurePercent[i] = Double(failPerson) / Double(copyStages.count)
            
            copyStages = copyStages.filter { $0 != i }
        }
        
        let resultDict = stagesFailurePercent.sorted {
                                                        if $0.1 == $1.1 { return $0.0 < $1.0 }
                                                        return $0.1 > $1.1
                                                      }
        
        return resultDict.map { $0.key }
    }
}
