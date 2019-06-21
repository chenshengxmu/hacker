---
layout: post
title: Root to leaf path sum equal to a given number
---
```java

boolean haspathSum(Node node, int sum) 
{ 
	if (node == null) 
		return (sum == 0); 
	else
	{ 
		boolean ans = false; 

		int subsum = sum - node.data; 
		if (subsum == 0 && node.left == null && node.right == null) 
			return true; 
		if (node.left != null) 
			ans = ans || haspathSum(node.left, subsum); 
		if (node.right != null) 
			ans = ans || haspathSum(node.right, subsum); 
		return ans; 
	} 
} 


```
