//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class BSTNode {
    var data : Int
    var left : BSTNode?
    var right : BSTNode?
    
    init(data: Int) {
        self.data = data
    }

    func getNewNode(data: Int) -> BSTNode? {
        let newNode : BSTNode? = nil
        newNode?.data = data
        newNode?.left = nil
        newNode?.right = nil
        return newNode
    }
    
    func insert(root : inout BSTNode?, data: Int) -> BSTNode? {
        if root == nil {
            root = getNewNode(data: data)
        }
        else if data <= (root?.data)! {
            var rootLeft = root?.left
            root?.left = insert(root: &rootLeft, data: data)
        }
        else{
            var rootRight = root?.right
            root?.right = insert(root: &rootRight, data: data)
        }
        return root
    }
    
    func search(root : inout BSTNode?, data: Int) -> Bool{
        if root == nil { return false }
        else if data == root?.data { return true }
        else if data <= (root?.data)! {
            var rootLeft = root?.left
            return search(root:&rootLeft, data: data)
        }
        else if data > (root?.data)! {
            var rootRight = root?.right
            return search(root:&rootRight, data: data)
        }
        return false
    }
    
    func findMin(root: BSTNode?) -> Int {
        if root == nil { return -1 }
        var current = root
        while current?.left != nil {
            current = current?.left
        }
        return (current?.data)!
    }
    
    func findMax(root: BSTNode?) -> Int {
        if root == nil { return -1 }
        var current = root
        while current?.right != nil {
            current = current?.right
        }
        return (current?.data)!
    }
    
    //Recursion one
    func findMinRecursive(root: BSTNode?) -> Int {
         if root == nil { return -1 }
         else if root?.left == nil {
            return (root?.data)!
        }
        return findMinRecursive(root:root?.left)
    }
    
    func height(root: BSTNode?) -> Int {
        if root == nil { return 0 }
        if root?.left == nil && root?.right == nil { return 0 }
        let leftHeight = height(root: root?.left)
        let rightHeight = height(root: root?.right)
        return max(leftHeight, rightHeight)
    }
    
    
    //LEVEL ORDER TRAVERSAL
    //Breadth first search scheme - traversing in a binary search tree
    //Discover node and keep track of it's children - Works on QUEUE - FIFO Order
    func levelOrder() {
        
    }
    
}
