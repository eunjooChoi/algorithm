//
//  SearchInsertPosition.swift
//  Algorithms
//
//  Created by 최은주 on 2022/07/27.
//

import Foundation

/**
    * 35. Search Insert Position
    * https://leetcode.com/problems/search-insert-position/
    * 주어진 오름차순으로 정렬된 nums 배열에서 target이 몇 번째 인덱스에 있는지 확인하는 문제
    * target이 배열에 없는 경우 오름차순에 맞게 배열에 추가하고 추가된 배열에서 인덱스를 찾아 return
 */

class SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard let index = nums.firstIndex(of: target) else {
            var newNums = nums
            newNums.append(target)
            newNums = newNums.sorted()
            
            return newNums.firstIndex(of: target)!
        }
        
        return index
    }
}
