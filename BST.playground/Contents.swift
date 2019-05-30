import UIKit

class Node{
    var value: Int?
    var leftChild: Node?
    var rightChild: Node?
}


func createTree(node:Node?, root:inout Node?){
    if let rootNode = root{
        if ((node?.value)! > (rootNode.value)!){
            createTree(node: node, root: &rootNode.rightChild)
        }
        else{
            createTree(node: node, root: &rootNode.leftChild)
        }
    }
    else{
        root = Node()
        root?.value = node?.value
        root?.leftChild = node?.leftChild
        root?.rightChild = node?.rightChild
        return
    }
}

func printTree(root:Node?){
    if let rootNode = root{
        printTree(root: rootNode.leftChild)
        print("\(String(describing: rootNode.value))")
        printTree(root: rootNode.rightChild)
    }
}

func searchElement(value: Int, root: Node?){
    if let rootNode = root{
        if (value == rootNode.value){
            print("found")
            return
        }
        else if (value > rootNode.value!){
            searchElement(value: value, root: rootNode.rightChild)
        }
        else{
            searchElement(value: value, root: rootNode.leftChild)
        }
    }
    else{
        print("not found")
        return
    }
    
}


var node1: Node? = Node()
node1!.leftChild = nil
node1!.rightChild = nil
node1!.value = 40

var node2 = Node()
node2.leftChild = nil
node2.rightChild = nil
node2.value = 30
createTree(node: node2, root: &node1)

var node3 = Node()
node3.leftChild = nil
node3.rightChild = nil
node3.value = 50
createTree(node: node3, root: &node1)

var node4 = Node()
node4.leftChild = nil
node4.rightChild = nil
node4.value = 45
createTree(node: node4, root: &node1)

var node5 = Node()
node5.leftChild = nil
node5.rightChild = nil
node5.value = 35
createTree(node: node5, root: &node1)

var node6 = Node()
node6.leftChild = nil
node6.rightChild = nil
node6.value = 75
createTree(node: node6, root: &node1)

printTree(root: node1)

searchElement(value: 65, root: node1)

