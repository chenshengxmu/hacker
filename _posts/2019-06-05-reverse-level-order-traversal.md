---
layout: post
title: Reverse Level Order Traversal
---
```java
void reverseLevelOrder(Node node) 
{ 
	Stack<Node> S = new Stack(); 
	Queue<Node> Q = new LinkedList(); 
	Q.add(node); 

	while (Q.isEmpty() == false) 
	{ 
		node = Q.peek(); 
		Q.remove(); 
		S.push(node); 

		if (node.right != null) 
			Q.add(node.right); 

		if (node.left != null) 
			Q.add(node.left); 
	} 

	while (S.empty() == false) 
	{ 
		node = S.peek(); 
		System.out.print(node.data + " "); 
		S.pop(); 
	} 
} 
```
