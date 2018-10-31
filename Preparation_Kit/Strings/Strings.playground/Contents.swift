//: Playground - noun: a place where people can play

import UIKit

/**
 * Question Link: https://www.hackerrank.com/challenges/ctci-making-anagrams/ [Strings: Making Anagrams]
 */

func makeAnagram(a: String, b: String) -> Int {
    var count = 0
    
    var firstArray = Array(a)
    var secondArray = Array(b)
    
    for i in firstArray{
        if secondArray.contains(i){
            firstArray.remove(at: firstArray.index(of: i)!)
            secondArray.remove(at: secondArray.index(of: i)!)
        }
    }
    
    count += firstArray.count + secondArray.count
    
    return count
}

makeAnagram(a: "cde", b: "abc")



/**
 * Question Link: https://www.hackerrank.com/challenges/alternating-characters/ [Alternating Characters]
 */






