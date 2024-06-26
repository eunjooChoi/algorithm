//
//  Process.swift
//  Algorithms
//
//  Created by 최은주 on 6/25/24.
//

import Foundation

/**
 *. 프로세스
 *. https://school.programmers.co.kr/learn/courses/30/lessons/42587
 */

class Process {
    func solution(_ priorities:[Int], _ location:Int) -> Int {
        var result = 0
        var newProcess: [(Int, Bool)] = []
        
        for (idx, priority) in priorities.enumerated() {
            if idx == location {
                newProcess.append((priority, true))
            } else {
                newProcess.append((priority, false))
            }
        }
        
        while true {
            let process = newProcess.removeFirst()
            if newProcess.filter({$0.0 > process.0}).count != 0 {
                newProcess.append(process)
                continue
            }
            
            if newProcess.filter({$0.0 > process.0}).count == 0 {
                result += 1
                if process.1 == true {
                    return result
                }
            }
        }

        return result
    }
}
