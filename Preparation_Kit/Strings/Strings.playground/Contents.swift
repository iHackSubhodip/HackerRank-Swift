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

func alternatingCharacters(s: String) -> Int {
    
    var count = 0
    let characterArray = Array(s)
    
    for i in 0..<characterArray.count - 1{
        count += characterArray[i] == characterArray[i + 1] ? 1 : 0
    }
    return count
}

alternatingCharacters(s: "AABAAB")


/**
 * Question Link: https://www.hackerrank.com/challenges/sherlock-and-valid-string/ [Sherlock and the Valid String]
 */


func isValid(s: String) -> String {
    
    var charactedDictionary = [Character: Int]()
    var frequencyOfcharactedDictionary = [Int: Int]()
    
    for aCharacter in s{
        if let countChar = charactedDictionary[aCharacter]{
            charactedDictionary[aCharacter] = countChar + 1
        }else{
            charactedDictionary[aCharacter] = 1
        }
    }
    //print(charactedDictionary)
    
    for (_, value) in charactedDictionary{
        if let countChar = frequencyOfcharactedDictionary[value]{
            frequencyOfcharactedDictionary[value] = countChar + 1
        }else{
            frequencyOfcharactedDictionary[value] = 1
        }
    }
    //print(frequencyOfcharactedDictionary)
    if frequencyOfcharactedDictionary.count <= 1{
       return "YES"
    }
    else if frequencyOfcharactedDictionary.count > 2{
        return "NO"
    }else{
        var canRemove = false
        let keys = [Int](frequencyOfcharactedDictionary.keys)
        let maxKey = max(keys[0], keys[1])
        let minKey = min(keys[0], keys[1])
        if frequencyOfcharactedDictionary[minKey] == 1{
            return "YES"
        }else{
            if abs(keys[0] - keys[1]) > 1{
                return "NO"
            } else{
                if frequencyOfcharactedDictionary[maxKey] == 1{
                    return "YES"
                }else{
                    return "NO"
                }
            }
        }
    }
    
}

isValid(s: "aaaaabc")








