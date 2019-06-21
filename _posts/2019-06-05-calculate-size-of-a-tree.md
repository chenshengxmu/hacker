---
layout: post
title: Calculate Size of a tree | Recursion
---
```java
int size(Node node) 
{ 
	if (node == null) 
		return 0; 
	else
		return(size(node.left) + 1 + size(node.right)); 
} 
```
