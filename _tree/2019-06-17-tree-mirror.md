---
layout: post
---
```java
// Iterative Java program to convert a Binary 
void mirror(Node root) 
{ 
	if (root == null) 
		return; 

	Queue<Node> q = new LinkedList<>(); 
	q.add(root); 

	// Do BFS. While doing BFS, keep swapping 
	// left and right children 
	while (q.size() > 0) 
	{ 
		// pop top node from queue 
		Node curr = q.peek(); 
		q.remove(); 

		// swap left child with right child 
		Node temp = curr.left; 
		curr.left = curr.right; 
		curr.right = temp;; 

		// push left and right children 
		if (curr.left != null) 
			q.add(curr.left); 
		if (curr.right != null) 
			q.add(curr.right); 
	} 
} 

//Recursive
Node mirror(Node node) 
{ 
	if (node == null) 
		return node; 

	/* do the subtrees */
	Node left = mirror(node.left); 
	Node right = mirror(node.right); 

	/* swap the left and right pointers */
	node.left = right; 
	node.right = left; 

	return node; 
} 

```

