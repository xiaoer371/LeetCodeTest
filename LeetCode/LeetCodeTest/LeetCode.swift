//
//  LeetCode.swift
//  LeetCodeTest
//
//  Created by lxj on 2017/10/26.
//  Copyright © 2017年 lxj. All rights reserved.
//

/** question1
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

import UIKit

class LeetCode: NSObject {
    
    /// 自己写的。 超级耗时。
   class func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
        
        for (index1, num1) in nums.enumerated() {
            
            for (index2, num2) in nums.enumerated() {
                if(num1 + num2 == target  && index2 != index1){
                    return [index1, index2]

                }
            }
        }
        fatalError("No valid outputs")
    }
    
    /// Copy
    class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            
            dict[num] = i
        }
        
        fatalError("No valid outputs")
    }
}
