//
//  KnightsWeapon.swift
//  Algorithms
//
//  Created by 최은주 on 6/16/24.
//

import Foundation

/**
 *. 기사단원의 무기
 *. https://school.programmers.co.kr/learn/courses/30/lessons/136798
 */

class KnightsWeapon {
    func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
        var count = 0
        var result = 0
        
        for knight in 1...number {
            count = 0
            for i in 1...Int(sqrt(Double(knight))) {
                if i * i == knight {
                    count += 1
                } else if knight % i == 0 {
                    count += 2
                }
            }
            
            if count <= limit {
                result += count
            } else {
                result += power
            }
        }
        return result
    }
}
