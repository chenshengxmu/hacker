---
layout: post
title: Lowest Common Ancestor in a Binary Tree (Using Parent Pointer)
---
```java
Node LCA(Node n1, Node n2) 
{ 
	int d1 = depth(n1), d2 = depth(n2); 
	int diff = d1 - d2; 

	if (diff < 0) 
	{ 
		Node temp = n1; 
		n1 = n2; 
		n2 = temp; 
		diff = -diff; 
	} 

	while (diff-- != 0) 
		n1 = n1.parent; 

	while (n1 != null && n2 != null) 
	{ 
		if (n1 == n2) 
			return n1; 
		n1 = n1.parent; 
		n2 = n2.parent; 
	} 

	return null; 
} 

```
