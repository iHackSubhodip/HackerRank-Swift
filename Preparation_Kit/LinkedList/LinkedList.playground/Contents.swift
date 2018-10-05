//: Playground - noun: a place where people can play

import UIKit

final class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?
    
    public init(nodeData: Int) {
        self.data = nodeData
    }
}

/**
 * Question Link: https://www.hackerrank.com/challenges/insert-a-node-at-a-specific-position-in-a-linked-list/ [Insert a node at a specific position in a linked list]
 *
 *
 * Input Format
 *  The first line contains an integer n, the number of elements in the linked list.
 *  Each of the next n lines contains an integer SinglyLinkedListNode[i].data.
 *  The last line contains an integer position.
 *
 * Input:
 *   3
 *   16
 *   13
 *   7
 *   1
 *   2
 *
 * Output:
 *  16 13 1 7
 */

func insertNodeAtPosition(llist: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
    let newNode = SinglyLinkedListNode(nodeData: data)
    var currentNode = llist
    
    for _ in 0..<position-1{
        currentNode = currentNode?.next
    }
    
    newNode.next = currentNode?.next
    currentNode?.next = newNode
    
    return llist
    
}


/**
 * Question Link: https://www.hackerrank.com/challenges/reverse-a-doubly-linked-list/ [Reverse a doubly linked list]
 *
 */

final class DoublyLinkedListNode {
    var data: Int
    var next: DoublyLinkedListNode?
    weak var prev: DoublyLinkedListNode?
    
    public init(nodeData: Int) {
        self.data = nodeData
    }
}



func reverse(llist: DoublyLinkedListNode?) -> DoublyLinkedListNode? {
    
    var next: DoublyLinkedListNode?
    var prev: DoublyLinkedListNode? = llist
    var current = llist?.next
    prev?.next = nil
    
    while current != nil{
        next = current?.next
        current?.next = prev
        current?.prev = next
        
        prev = current
        current = next
    }
    
    return prev
    
}


/**
 * Question Link: https://www.hackerrank.com/challenges/insert-a-node-into-a-sorted-doubly-linked-list/ [Inserting a Node Into a Sorted Doubly Linked List]
 *
 */

func sortedInsert(llist head: DoublyLinkedListNode?, data: Int) -> DoublyLinkedListNode? {
    let newNode = DoublyLinkedListNode(nodeData: data)
    guard head!.data < data else {
        newNode.next = head!
        head!.prev = newNode
        return newNode
    }
    
    var prevNode = head!
    while prevNode.next != nil && prevNode.next!.data < data {
        prevNode = prevNode.next!
    }
    
    newNode.next = prevNode.next
    newNode.prev = prevNode
    newNode.next?.prev = newNode
    newNode.prev!.next = newNode
    return head
}











