//
//  main.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/15.
//

import Foundation

// 크레인 인형뽑기 게임 문제
//print(CraneGame().solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))

// 문자열 압축 문제
//print(StringZip().solution("aabbacc"))

// 오픈채팅방
//print(OpenChatRoom().solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))

// Search Insert Position
//print(SearchInsertPosition().searchInsert([1,3,5,6], 7))

// Length of Last Word
//print(LengthofLastWord().lengthOfLastWord("   fly me   to   the moon  "))

// Plus One
//print(PlusOne().plusOne([8, 9, 9, 9]))

// Add Binary
//print(AddBinary().addBinary("101111", "10"))

// Sqrt(x)
//print(SqrtX().mySqrt(8))

// Climbing Stairs
//print(ClimbingStairs().climbStairs(4))

// Remove Duplicates from Sorted List
//let head = ListNode.init(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
//print(RemoveDuplicatesSortedList().deleteDuplicates(head))

// Merge Sorted Array
var nums1 = [1, 2, 3, 0 ,0, 0]
MergeSortedArray().merge(&nums1, 3, [2, 5, 6], 3)
print(nums1)
