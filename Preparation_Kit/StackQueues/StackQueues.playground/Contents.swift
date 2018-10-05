//: Playground - noun: a place where people can play

import UIKit
import Foundation

/**
 * Question Link: https://www.hackerrank.com/challenges/balanced-brackets/ [Balanced Brackets]
 *
 */


func isBalanced(s: String) -> String {
    var characterStack = [Character]()
    
    for aChar in s{
        if aChar == "(" || aChar == "{" || aChar == "["{
            characterStack.append(aChar)
        }else if aChar == ")"{
            guard characterStack.count > 0 && characterStack.removeLast() == "(" else{
                return "NO"
            }
        }else if aChar == "}"{
            guard characterStack.count > 0 && characterStack.removeLast() == "{" else{
                return "NO"
            }
        }else if aChar == "]"{
            guard characterStack.count > 0 && characterStack.removeLast() == "[" else{
                return "NO"
            }
        }
    }
    
    return characterStack.isEmpty ? "YES" : "NO"
}

isBalanced(s: "{{[[(())]]}}")


/**
 * Question Link: https://www.hackerrank.com/challenges/largest-rectangle/ [Largest Rectangle]
 *
 * Idea: 1. Keep a Stack. Append the element until you get a smaller element than the last stack element.
 * 2. If you receive a lesser elemnt pop the top element from the stack and find the area.
 * 3. Each unit have length of 1. here (i-1) is the index of the current Maximum height[from where the pop operation started]. to find the width use (Max height index[i-1] - last element of the stack.)
 * 4. then keep on iterating and update the maximum area.
 * 5. Last while loop is to make sure, if something left in the stack, we perform the above operation[3 & 4] for those remaining elements.
 */

func largestRectangle(h: [Int]) -> Int {
    var maxArea = 0
    var i = 0
    var buildingStack = [Int]()
    
    while i < h.count{
        if buildingStack.isEmpty || h[i] >= h[buildingStack.last!]{
            buildingStack.append(i)
            i += 1
        }else{
            let currentMax = buildingStack.removeLast()
            let area = h[currentMax] * (buildingStack.isEmpty ? i : i - 1 - buildingStack.last!)
            maxArea = max(maxArea, area)
        }
    }
    
    while !buildingStack.isEmpty{
        let currentMax = buildingStack.removeLast()
        let area = h[currentMax] * (buildingStack.isEmpty ? i : i - 1 - buildingStack.last!)
        maxArea = max(maxArea, area)
    }
    
    return maxArea
    
}

largestRectangle(h: [1, 2, 3, 4, 5])










