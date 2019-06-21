---
layout: post
title: Level Order Tree Traversal
---
```java
class Node { 
	int data; 
	Node left, right; 

	public Node(int item) { 
		data = item; 
		left = null; 
		right = null; 
	} 
} 

void printLevelOrder(Node root) 
{ 
	Queue<Node> queue = new LinkedList<Node>(); 
	queue.add(root); 
	while (!queue.isEmpty()) 
	{ 

		Node tempNode = queue.poll(); 
		System.out.print(tempNode.data + " "); 

		if (tempNode.left != null) { 
			queue.add(tempNode.left); 
		} 

		if (tempNode.right != null) { 
			queue.add(tempNode.right); 
		} 
	} 
} 

```
