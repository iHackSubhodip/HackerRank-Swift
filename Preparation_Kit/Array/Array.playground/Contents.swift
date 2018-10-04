//: Playground - noun: a place where people can play

import UIKit
import Foundation

/**
 * Question Link: https://www.hackerrank.com/challenges/ctci-array-left-rotation/
 *
 * Primary idea: Play with the indices. Formula - [index+times] % arrayCount
 *
 * Input:
 *  5 4
 *  1 2 3 4 5
 *
 * Output:
 *  5 1 2 3 4
 */

func rotLeft(a: [Int], d: Int) -> [Int] {
    var rotatedResult = [Int]()
    
    for aIndex in a.indices{
        rotatedResult.append(a[(aIndex+d) % a.count])
    }
    
    return rotatedResult
}

rotLeft(a: [1, 2, 3, 4, 5], d: 4)

/**
 * Question Link: https://www.hackerrank.com/challenges/new-year-chaos/ [New Year Chaos]
 *
 * Input:
 *  5
 *  2 1 5 3 4
 *
 * Output:
 *  3
 *
 *
 * Input:
 *  5
 *  2 5 1 3 4
 *
 * Output:
 *  Too chaotic
 */

func minimumBribes(q: [Int]) -> Void {
    var tooChaotic = false
    var bribeCount = 0
    for i in 0..<q.count{
        if q[i] - (i+1) > 2{
            tooChaotic = true
            break
        }
        
        for j in max(0, q[i] - 2)..<i+1{
            if (q[j] > q[i]) {bribeCount += 1}
        }
    }
    
    tooChaotic == true ? print("Too chaotic") : print(bribeCount)
}

minimumBribes(q: [2, 5, 1, 3, 4])


/**
 * Question Link: https://www.hackerrank.com/challenges/minimum-swaps-2/ [Minimum Swaps 2]
 *
 * Input:
 *  4
 *  4 3 1 2
 *
 * Output:
 *  3
 */


func minimumSwaps(arr: [Int]) -> Int {
    var swapsCount = 0
    var array = arr
    
    for i in 0..<arr.count - 1{
        while array[i] != i + 1{
//            print("i is \(i)")
            array.swapAt(array[i]-1, i)
//            print(array)
            swapsCount += 1
        }
    }
    return swapsCount
}

minimumSwaps(arr: [4, 3, 1, 2])







