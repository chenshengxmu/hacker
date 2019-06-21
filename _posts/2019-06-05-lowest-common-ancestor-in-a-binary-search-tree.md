---
layout: post
title: Lowest Common Ancestor in a Binary Search Tree.
---
```cpp
node *lca(struct node* root, int n1, int n2) 
{ 
	while (root != NULL) 
	{ 
		if (root->data > n1 && root->data > n2) 
		root = root->left; 

		else if (root->data < n1 && root->data < n2) 
		root = root->right; 

		else break; 
	} 
	return root; 
} 
```

```java
Node lca(Node node, int n1, int n2) 
{ 
	if (node == null) 
		return null; 

	if (node.data > n1 && node.data > n2) 
		return lca(node.left, n1, n2); 

	if (node.data < n1 && node.data < n2) 
		return lca(node.right, n1, n2); 

	return node; 
} 
```
