//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  LeetCodeTest
//
//  Created by lxj on 2017/10/28.
//  Copyright © 2017年 lxj. All rights reserved.
//

/**
 ======================      question3     ================================
 
     Given a string, find the length of the longest substring without repeating characters.
 
     Examples:
 
     Given "abcabcbb", the answer is "abc", which the length is 3.
 
     Given "bbbbb", the answer is "b", with the length of 1.
 
     Given "pwwkew", the answer is "wke", with the length of 3.
 
     Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */


import UIKit

class LongestSubstringWithoutRepeatingCharacters: NSObject {
    
    class func lengthOfLongestSubstring(_ s: String) -> Int {
        
        guard s.characters.count != 0 else {
            return 0
        }
        
        var set = Set<Character>()
        var maxLen = 0
        var startIndex = 0
        var chars = [Character](s.characters)
        
        for i in 0..<chars.count {
            let current = chars[i]
            
            if set.contains(current) {
                maxLen = max(maxLen, i - startIndex)
                
                while chars[startIndex] != current {
                    set.remove(chars[startIndex])
                    startIndex += 1
                }
                startIndex += 1
            } else {
                set.insert(current)
            }
        }
        
        maxLen = max(maxLen, chars.count - startIndex)
        
        return maxLen
    }
}
