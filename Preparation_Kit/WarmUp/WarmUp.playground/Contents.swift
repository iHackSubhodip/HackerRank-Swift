//: Playground - noun: a place where people can play

import UIKit
import Foundation

 /**
 * Question Link: https://www.hackerrank.com/challenges/sock-merchant
 *
 * Problem Statement: John works at a clothing store. He has a large pile of socks that he must pair by color for sale.
 *  Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 *
 * Primary idea: Make a dictionary and keep track of the Pair.
 *
 * Input:
 *  9
 *  10 20 20 10 10 30 50 10 20
 *
 * Output:
 *   3
 */


func sockMerchant(n: Int, ar: [Int]) -> Int {
    var numberOfPairs = 0
    var socksPairDictionary = [Int: Int]()
    
    for aSock in ar{
        if socksPairDictionary[aSock] == nil{
            socksPairDictionary[aSock] = 1
        } else{
            if socksPairDictionary[aSock] == 1{
                numberOfPairs += 1
                socksPairDictionary[aSock]! -= 1
            }else{
                socksPairDictionary[aSock] = 1
            }
        }
    }
    
    return numberOfPairs
}

sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])


/**
 * Question Link: https://www.hackerrank.com/challenges/jumping-on-the-clouds/
 *
 * Problem Statement: Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus 1 or 2. She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.
 *
 * Primary idea:
 *
 * Input:
 *  7
 *  0 0 1 0 0 1 0
 *
 * Output:
 *   4
 */

func jumpingOnClouds(c: [Int]) -> Int {
    var jumps = 0
    var arrayPosition = 0 {
        didSet{
            jumps += 1
        }
    }
    while arrayPosition < c.count - 2{
        if c.count > c[arrayPosition + 2] && c[arrayPosition + 2] == 0{
            arrayPosition += 2
        }else{
            arrayPosition += 1
        }
    }
    if arrayPosition < c.count - 1 { arrayPosition += 1}
    return jumps
    
}

jumpingOnClouds(c: [0, 0, 0, 1, 0, 0])





