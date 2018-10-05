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



