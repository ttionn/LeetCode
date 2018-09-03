//
//  main.swift
//  TwoSum
//
//  Created by TTSY on 2018/9/3.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

print("Two Sum")

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 Example
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDic = Dictionary<Int, Int>()

        for (index, value) in nums.enumerated() {
            numDic[value] = index
        }

        var nextNumber: Int
        for index in 0 ..< nums.count {
            nextNumber = target - nums[index]
            if let nextIndex = numDic[nextNumber] {
                if nextIndex != index {
                    return [index, nextIndex]
                }
            }
        }
        
        fatalError("No answer!")
        
        //  More advanced solution: combine two loops together. At beginning, check the first number index if exists in numberDic, if find return answer, else go next loop, before end of this loop, save current index to numberDic. This index would be the potential first number index in further loops.
        
        /*
        var numberDic = [Int: Int]()
        
        for (index, value) in nums.enumerated() {
            if let firstNumberIndex = numberDic[target - value] {
                return [firstNumberIndex, index]
            }
            
            numberDic[value] = index
        }
        
        fatalError("No answer!")
        */
    }
}

let solution = Solution()
let result = solution.twoSum([3,2,4], 6)
print(result)
