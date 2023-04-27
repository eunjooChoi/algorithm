//
//  RunningRace.swift
//  Algorithms
//
//  Created by 최은주 on 2023/04/27.
//

import Foundation

/**
 * 달리기 경주
 * https://school.programmers.co.kr/learn/courses/30/lessons/178871?language=swift
 * Dictionary가 배열보다 속도가 더 빠르다..!
 */

class RunningRace {
    func solution(_ players:[String], _ callings:[String]) -> [String] {
        var result: [String] = []
        var playerDic: [Int: String] = [:]
        var playerRankingDic: [String: Int] = [:]
        
        for (ranking, player) in players.enumerated() {
            playerDic[ranking + 1] = player
            playerRankingDic[player] = ranking + 1
        }
        
        for calling in callings {
            if let ranking = playerRankingDic[calling],
               let present = playerDic[ranking],
               let prep = playerDic[ranking - 1] {
                
                playerDic[ranking] = prep
                playerDic[ranking - 1] = present
                
                playerRankingDic[present] = ranking - 1
                playerRankingDic[prep] = ranking
            }
        }
        
        
        for (_, value) in playerDic.sorted(by: <) {
            result.append(value)
        }
        
        return result
    }
}
