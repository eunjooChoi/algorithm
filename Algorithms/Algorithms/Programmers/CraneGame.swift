//
//  CraneGame.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/15.
//

import Foundation

/**
    * 크레인 인형뽑기 게임 문제
    * https://school.programmers.co.kr/learn/courses/30/lessons/64061
 */

class CraneGame {
    func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
        // board를 변경할 수 없으므로 copyBoard 변수 생성
        var copyBoard: [[Int]] = board
        
        // 뽑은 인형을 담을 basket 생성
        var basket: [Int] = []
        
        // 터뜨린 인형의 개수를 체크할 result 생성
        var result = 0
        
        // moves를 돌면서 각 boardRow 배열의 move-1번째 열의 요소를 체크한다.
        for move in moves {
            let index = move - 1    // 각 board의 열
            for (idx, boardRow) in copyBoard.enumerated() {
                var row = boardRow
                
                // 해당 위치에 인형이 있는 경우 basket의 마지막 인형과 같은지 확인
                if row[index] != 0 {
                    // 같은 인형이 basket에 있는 경우 result를 +
                    // basket에서 인형을 없앤다
                    if basket.last == row[index] {
                        let _ = basket.popLast()
                        result += 2
                    } else {
                        // 같은 인형이 없는 경우 인형을 추가한다.
                        basket.append(row[index])
                    }
                    
                    // 뽑힌 인형의 위치는 0으로 변경해준다
                    row[index] = 0
                    copyBoard[idx] = row
                    
                    break
                }
            }
        }
        
        return result
    }
}
