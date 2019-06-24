---
layout: post
---
```java
// Iterative Java program to convert a Binary 
// Tree to its mirror 
import java.util.*; 

class GFG 
{ 

	/* A binary tree node has data, pointer to 
	   left child and a pointer to right child */
	static class Node 
	{ 
		int data; 
		Node left; 
		Node right; 
	}; 

	/* Helper function that allocates a new node 
	   with the given data and null left and right 
	   pointers. */
	static Node newNode(int data) 

	{ 
		Node node = new Node(); 
		node.data = data; 
		node.left = node.right = null; 
		return(node); 
	} 

	/* Change a tree so that the roles of the left and 
	   right pointers are swapped at every node. 
	   So the tree... 
	   4 
	   / \ 
	   2 5 
	   / \ 
	   1 3 

	   is changed to... 
	   4 
	   / \ 
	   5 2 
	   / \ 
	   3 1 
	 */
	static void mirror(Node root) 
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


	/* Helper function to print Inorder traversal.*/
	static void inOrder( Node node) 
	{ 
		if (node == null) 
			return; 
		inOrder(node.left); 
		System.out.print( node.data + " "); 
		inOrder(node.right); 
	} 


	/* Driver code */
	public static void main(String args[]) 
	{ 
		Node root = newNode(1); 
		root.left = newNode(2); 
		root.right = newNode(3); 
		root.left.left = newNode(4); 
		root.left.right = newNode(5); 

		/* Print inorder traversal of the input tree */
		System.out.print( "\n Inorder traversal of the"
				+" coned tree is \n"); 
		inOrder(root); 

		/* Convert tree to its mirror */
		mirror(root); 

		/* Print inorder traversal of the mirror tree */
		System.out.print( "\n Inorder traversal of the "+ 
				"mirror tree is \n"); 
		inOrder(root); 
	} 
} 

// This code is contributed by Arnab Kundu 


// Java program to convert binary tree into its mirror 

/* Class containing left and right child of current 
   node and key value*/
class Node 
{ 
	int data; 
	Node left, right; 

	public Node(int item) 
	{ 
		data = item; 
		left = right = null; 
	} 
} 

class BinaryTree 
{ 
	Node root; 

	void mirror() 
	{ 
		root = mirror(root); 
	} 

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

	void inOrder() 
	{ 
		inOrder(root); 
	} 

	/* Helper function to test mirror(). Given a binary 
	   search tree, print out its data elements in 
	   increasing sorted order.*/
	void inOrder(Node node) 
	{ 
		if (node == null) 
			return; 

		inOrder(node.left); 
		System.out.print(node.data + " "); 

		inOrder(node.right); 
	} 

	/* testing for example nodes */
	public static void main(String args[]) 
	{ 
		/* creating a binary tree and entering the nodes */
		BinaryTree tree = new BinaryTree(); 
		tree.root = new Node(1); 
		tree.root.left = new Node(2); 
		tree.root.right = new Node(3); 
		tree.root.left.left = new Node(4); 
		tree.root.left.right = new Node(5); 

		/* print inorder traversal of the input tree */
		System.out.println("Inorder traversal of input tree is :"); 
		tree.inOrder(); 
		System.out.println(""); 

		/* convert tree to its mirror */
		tree.mirror(); 

		/* print inorder traversal of the minor tree */
		System.out.println("Inorder traversal of binary tree is : "); 
		tree.inOrder(); 

	} 
} 

```

