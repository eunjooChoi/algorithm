//
//  Painting.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/04.
//

import Foundation

/**
 * 덧칠하기
 * https://school.programmers.co.kr/learn/courses/30/lessons/161989
 * 참고 블로그: https://beomcoder.tistory.com/52
 */


class Painting {
    func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
        guard m != 1 else { return section.count }
        var element = section[0] - 1
        var count = 0

        for sec in section {
            if element < sec {
                element = sec + m - 1
                count += 1
            }
        }

        return count
    }
}
