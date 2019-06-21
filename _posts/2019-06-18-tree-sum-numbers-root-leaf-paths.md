---
layout: post
---
```java
int treePathsSumUtil(Node node, int val) 
{ 
	// Base case 
	if (node == null) 
		return 0; 

	// Update val 
	val = (val * 10 + node.data); 

	// if current node is leaf, return the current value of val 
	if (node.left == null && node.right == null) 
		return val; 

	// recur sum of values for left and right subtree 
	return treePathsSumUtil(node.left, val) 
		+ treePathsSumUtil(node.right, val); 
} 

```
