---
layout: post
title: Root to leaf path sum equal to a given number
---
```java
bool hasPathProduct(struct node* node, int prod) 
{ 
	if (node == NULL) { 
		return (prod == 1); 
	} 
	else { 
		bool ans = 1; 

		if (prod % (node->data)) 
			return false; 

		int subProduct = prod / node->data; 

		if (subProduct == 1 && node->left == NULL 
				&& node->right == NULL) 
			return 1; 

		if (node->left) 
			ans |= hasPathProduct(node->left, subProduct); 
		if (node->right) 
			ans |= hasPathProduct(node->right, subProduct); 

		return ans; 
	} 
} 

```
