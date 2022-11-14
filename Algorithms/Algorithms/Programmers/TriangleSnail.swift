//
//  TriangleSnail.swift
//  Algorithms
//
//  Created by 최은주 on 2022/11/14.
//

import Foundation

/**
 * 삼각 달팽이
 * https://school.programmers.co.kr/learn/courses/30/lessons/68645
 * 높이, 밑변이 n인 삼각형에 빙글빙글 돌려서 숫자를 채운 뒤 위부터 차례로 값을 출력하는 문제
 */

class TriangleSnail {
    func solution(_ n:Int) -> [Int] {
        var snailArr = [[Int]]()
        
        for i in 1..<n + 1 {
            snailArr.append([i])
        }
        
        var repeatCount = 1         // 몇 번째 반복 중인지 체크
        var turns = 0         // 몇 번째 도는 지 확인 (아래, 옆, 위 한바퀴가 1턴)
        var elementCounts = n - 1   // 한 턴당 추가되어야 하는 원소의 수
        var number = n
        var row = n - 1       // 2차원 배열 몇 번째에 넣어야 하는지 체크
        
        while elementCounts != 0 {
            for i in 1..<elementCounts + 1 {
                let insertNum = number + i
                
                switch repeatCount % 3 {
                case 0:
                    row = row + 1
                    let index = turns + 1
                    
                    snailArr[row].insert(insertNum, at: index)
                case 1:
                    let index = turns + i
                    snailArr[row].insert(insertNum, at: index)
                default:
                    row = row - 1
                    let index = (snailArr[row].count == 1) ? 1 : snailArr[row].count - turns
                    
                    snailArr[row].insert(insertNum, at: index)
                }
            }
            
            if repeatCount % 3 == 0 { turns += 1 }
            
            number += elementCounts
            elementCounts -= 1
            repeatCount += 1
        }
        
        return snailArr.flatMap { $0 }
    }
}
