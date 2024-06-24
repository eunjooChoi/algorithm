//
//  Cache.swift
//  Algorithms
//
//  Created by 최은주 on 6/24/24.
//

import Foundation


/**
 *. 캐시
 *. https://school.programmers.co.kr/learn/courses/30/lessons/17680
 */

class Cache {
    func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
        if cacheSize == 0 {
            return 5 * cities.count
        }
        
        var cache: [String] = Array(repeating: "", count: cacheSize)
        var runtime = 0
        
        for city in cities {
            let lowercasedCity = city.lowercased()
            if let index = cache.firstIndex(of: lowercasedCity) {
                runtime += 1
                cache.remove(at: index)
                cache.append(lowercasedCity)
            } else {
                runtime += 5
                cache.removeFirst()
                cache.append(lowercasedCity)
            }
        }
        return runtime
    }
}
