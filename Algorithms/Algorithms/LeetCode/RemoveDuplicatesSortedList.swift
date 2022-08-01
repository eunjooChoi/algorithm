//
//  RemoveDuplicatesSortedList.swift
//  Algorithms
//
//  Created by 최은주 on 2022/08/01.
//

import Foundation

/**
    * 83. Remove Duplicates from Sorted List
    * https://leetcode.com/problems/remove-duplicates-from-sorted-list/
    * 오름차순으로 들어있는 링크드리스트 노드들의 중복을 제거하는 문제
    * 1, 1, 2로 들어온다면 1, 2로 리턴되어야 한다.
 */

class RemoveDuplicatesSortedList {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var copyHead = head
        var resultValues: [Int] = []
        
        while copyHead != nil {
            resultValues.append(copyHead?.val ?? 0)
            copyHead = copyHead?.next
        }
        
        let arrayValues = Array(Set<Int>(resultValues)).sorted()
        
        var result: ListNode? = nil
        var resultHead: ListNode? = nil
        
        arrayValues.forEach { value in
            if result == nil {
                result = ListNode(value)
                resultHead = result
            } else {
                result?.next = ListNode(value)
                result = result?.next
            }
        }
        
        return resultHead
    }
}


class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
