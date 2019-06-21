---
layout: post
title: Print all the paths from root, with a specified sum in Binary tree
---
```java
struct Node 
{ 
	int key; 
	struct Node *left, *right; 
}; 

void printPathsUtil(Node* curr_node, int sum, 
		int sum_so_far, vector<int> &path) 
{ 
	if (curr_node == NULL) 
		return; 

	sum_so_far += curr_node->key; 

	path.push_back(curr_node->key); 

	if (sum_so_far == sum ) 
	{ 
		cout << "Path found: "; 
		for (int i=0; i<path.size(); i++) 
			cout << path[i] << " "; 

		cout << endl; 
	} 

	if (curr_node->left != NULL) 
		printPathsUtil(curr_node->left, sum, sum_so_far, path); 

	if (curr_node->right != NULL) 
		printPathsUtil(curr_node->right, sum, sum_so_far, path); 


	path.pop_back(); 
} 

```
