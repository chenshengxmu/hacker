---
layout: post
title: Inorder Tree Traversal without Recursion
---
```java
void inorder(Node root) 
{ 
	if (root == null) 
		return; 

	Stack<Node> s = new Stack<Node>(); 
	Node curr = root; 

	while (curr != null || s.size() > 0) 
	{ 
		while (curr != null) 
		{ 
			s.push(curr); 
			curr = curr.left; 
		} 

		curr = s.pop(); 

		System.out.print(curr.data + " "); 

		curr = curr.right; 
	} 
} 
```
