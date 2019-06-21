---
layout: post
title: Iterative Method to find Height of Binary Tree
---
```java
int treeHeight(Node node) 
{ 
	if (node == null) 
		return 0; 

	Queue<Node> q = new LinkedList(); 

	q.add(node); 
	int height = 0; 

	while (True) 
	{ 
		int nodeCount = q.size(); 
		if (nodeCount == 0) 
			return height; 
		height++; 

		while (nodeCount > 0) 
		{ 
			Node newnode = q.peek(); 
			q.remove(); 
			if (newnode.left != null) 
				q.add(newnode.left); 
			if (newnode.right != null) 
				q.add(newnode.right); 
			nodeCount--; 
		} 
	} 
} 
```
