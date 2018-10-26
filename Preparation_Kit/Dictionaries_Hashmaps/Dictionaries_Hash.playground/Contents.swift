//: Playground - noun: a place where people can play

import UIKit

/**
 * Question Link: https://www.hackerrank.com/challenges/ctci-ransom-note/ [Hash Tables: Ransom Note]
 *
 * Input:
 *  6 4
 *  give me one grand today night
 *  give one grand today
 *
 * Output:
 *  Yes
 */

func checkMagazine(magazine: [String], note: [String]) -> Void {
    var magazineDictionary = [String: Int]()
    
    for aWord in magazine{
        if let _ = magazineDictionary[aWord]{
            magazineDictionary[aWord]! += 1
        }else{
            magazineDictionary[aWord] = 1
        }
    }
    
    for aWord in note{
        if let amountOfWord = magazineDictionary[aWord]{
            if amountOfWord < 1{
                print("No")
                return
            }else{
                magazineDictionary[aWord]! -= 1
            }
        }else{
            print("No")
            return
        }
    }
    //print(magazineDictionary)
    print("Yes")
}

checkMagazine(magazine: "give me one grand today night".components(separatedBy: " "), note: "give one grand today".components(separatedBy: " "))


/**
 * Question Link: https://www.hackerrank.com/challenges/two-strings/ [Two Strings]
 *
 * Input:
 *  hello
 *  world
 *  hi
 *  world
 *
 * Output:
 *  Yes
 *  No
 */


func twoStrings(s1: String, s2: String) -> String {
    let intersection = Set(s1).intersection(Set(s2))
    return intersection.count > 0 ? "Yes" : "No"
}

twoStrings(s1: "hello", s2: "world")


/**
 * Question Link: https://www.hackerrank.com/challenges/sherlock-and-anagrams/ [Sherlock and Anagrams]
 *
 * Input:
 *  abba
 *
 * Output:
 *  4
 */










