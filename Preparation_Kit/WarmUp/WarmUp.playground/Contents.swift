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







