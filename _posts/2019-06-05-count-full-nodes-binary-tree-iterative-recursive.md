---
layout: post
title: 
---
```java
int getfullCount(Node root) 
{ 
	if (root == null) 
	return 0; 

	int res = 0; 
	if (root.left != null && root.right != null) 
	res++; 

	res += (getfullCount(root.left) + getfullCount(root.right)); 
	return res; 
} 

int getfullCount() 
{ 
	if (root==null) 
		return 0; 

	Queue<Node> queue = new LinkedList<Node>(); 

	queue.add(root); 

	int count=0;
	while (!queue.isEmpty()) 
	{ 

		Node temp = queue.poll(); 
		if (temp.left!=null && temp.right!=null) 
			count++; 

		if (temp.left != null) 
		{ 
			queue.add(temp.left); 
		} 

		if (temp.right != null) 
		{ 
			queue.add(temp.right); 
		} 
	} 
	return count; 
} 
```
