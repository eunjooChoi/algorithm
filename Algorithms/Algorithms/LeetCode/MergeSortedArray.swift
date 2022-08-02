//
//  MergeSortedArray.swift
//  Algorithms
//
//  Created by 최은주 on 2022/08/02.
//

import Foundation

/**
    * 88. Merge Sorted Array
    * https://leetcode.com/problems/merge-sorted-array/
    * 정렬된 배열 두 개를 합쳐 정렬된 배열로 만드는 문제
    * nums1의 배열에는 0이 아닌 숫자들과 그 숫자들의 개수와 m과 n을 더한 숫자만큼 차이에 필요한 0이 들어갈 수 있다.
 */

class MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1WithoutZero = nums1.filter { $0 != 0 }
        let needZero = m - nums1WithoutZero.count
        
        if needZero != 0 {
            for _ in 0...needZero - 1 {
                nums1WithoutZero.append(0)
            }
        }
        
        nums1 = (nums1WithoutZero + nums2).sorted(by: <)
    }
}
