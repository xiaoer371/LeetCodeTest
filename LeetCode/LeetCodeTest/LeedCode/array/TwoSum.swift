//
//  TwoSum.swift
//  LeetCodeTest
//
//  Created by lxj on 2017/10/28.
//  Copyright © 2017年 lxj. All rights reserved.
//

import UIKit

/**  ======================      question1    ================================
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */

class TwoSum: NSObject {

    /// 超级耗时。 超过耗时
    // MARK: Question 1
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
    
    
    /*
     * tips:
     *   var dic1: Dictionary = ["123": 1]
     *   var dic2: Dictionary<String,Int> = [:]
     *   var dic3 = [String: Int]()
     *   var dic4: [String: Int] = ["123": 1]
     *   var  dic5 = Dictionary<String,Int>()
     */
    
}
