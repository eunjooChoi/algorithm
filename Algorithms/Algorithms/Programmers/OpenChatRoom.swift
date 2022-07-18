//
//  OpenChatRoom.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/18.
//

import Foundation

/**
    * 오픈채팅방
    * https://school.programmers.co.kr/learn/courses/30/lessons/42888
    * enter이나 change가 나오는 경우 userNickName 값을 추가/변경하도록 함
    * record로 들어온 String 배열을 " "로 나누어 2차원 배열로 만든 뒤 change가 들어가지 않은 요소들을 걸러내고 enter과 leave에 맞는 문자열을 출력하도록 함
 */

class OpenChatRoom {
    func solution(_ record:[String]) -> [String] {
        enum Keyword: String {
            case enter = "Enter"
            case leave = "Leave"
            case change = "Change"
            
            var message: String {
                switch self {
                case .enter:
                    return "님이 들어왔습니다."
                case .leave:
                    return "님이 나갔습니다."
                default:
                    return ""
                }
            }
        }
        
        var userNickName: [String: String] = [:]
        let recordArr: [[String]] = record.map { record in
            let arr = record.components(separatedBy: " ")
            
            // userNickName 관리
            if arr[0] == Keyword.enter.rawValue || arr[0] == Keyword.change.rawValue {
                userNickName[arr[1]] = arr[2]
            }
            
            return arr
        }
        
        let result: [String] = recordArr.filter { $0[0] != Keyword.change.rawValue }
                                        .map { info in
                                            let nickName = userNickName[info[1]] ?? ""
                                            if info[0] == Keyword.enter.rawValue {
                                                return nickName + Keyword.enter.message
                                            } else {
                                                return nickName + Keyword.leave.message
                                            }
                                        }
        
        return result
    }
}
