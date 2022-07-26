//
//  main.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/15.
//

import Foundation

// 크레인 인형뽑기 게임 문제
print(CraneGame().solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))

// 문자열 압축 문제
print(StringZip().solution("aabbacc"))

// 오픈채팅방
print(OpenChatRoom().solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))

// Search Insert Position
print(SearchInsertPosition().searchInsert([1,3,5,6], 7))
