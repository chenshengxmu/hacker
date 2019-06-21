---
layout: post
title: Iterative Preorder Traversal
---
```java
void iterativePreorder(Node node) { 

	if (node == null) { 
		return; 
	} 

	Stack<Node> nodeStack = new Stack<Node>(); 
	nodeStack.push(root); 

	while (nodeStack.empty() == false) { 

		Node mynode = nodeStack.peek(); 
		System.out.print(mynode.data + " "); 
		nodeStack.pop(); 

		if (mynode.right != null) { 
			nodeStack.push(mynode.right); 
		} 
		if (mynode.left != null) { 
			nodeStack.push(mynode.left); 
		} 
	} 
} 
```
