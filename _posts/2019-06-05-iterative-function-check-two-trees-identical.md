---
layout: post
title: Iterative function to check if two trees are identical
---
```java
boolean areIdentical(Node root1, Node root2) 
{ 
	if (root1 == null && root2 == null) return true; 

	if (root1 == null || root2 == null) return false; 

	Queue<Node > q1 = new LinkedList<Node> (); 
	Queue<Node> q2 = new LinkedList<Node> (); 

	q1.add(root1); 
	q2.add(root2); 

	while (!q1.isEmpty() && !q2.isEmpty()) 
	{ 
		Node n1 = q1.peek(); 
		Node n2 = q2.peek(); 

		if (n1.data != n2.data) 
			return false; 

		q1.remove(); 
		q2.remove(); 

		if (n1.left != null && n2.left != null) 
		{ 
			q1.add(n1.left); 
			q2.add(n2.left); 
		} 
		else if (n1.left != null || n2.left != null) 
			return false; 

		if (n1.right != null && n2.right != null) 
		{ 
			q1.add(n1.right); 
			q2.add(n2.right); 
		} 
		else if (n1.right != null || n2.right != null) 
			return false; 
	} 

	return true; 
} 
```
