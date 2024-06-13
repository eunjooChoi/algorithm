//
//  RemainOne.swift
//  Algorithms
//
//  Created by 최은주 on 6/13/24.
//

import Foundation

/**
 * 나머지가 1이 되는 수
 * https://school.programmers.co.kr/learn/courses/30/lessons/87389
 */

class RemainOne {
    func solution(_ n:Int) -> Int {
        for count in 1..<n {
            if n % count == 1 {
                return count
            }
        }
        return 0
    }
}
