---
layout: post
title: Print the first shortest root to leaf path in a Binary Tree
---
```java
struct Node { 
	struct Node* left; 
	struct Node* right; 
	int data; 
}; 

void printPath(int Data, unordered_map<int, 
		int> parent) 
{ 
	if (parent[Data] == Data) 
		return; 

	printPath(parent[Data], parent); 

	cout << parent[Data] << " "; 
} 

void leftMostShortest(struct Node* root) 
{ 
	queue<struct Node*> q; 

	q.push(root); 

	int LeafData = -1; 

	struct Node* temp = NULL; 

	unordered_map<int, int> parent; 

	parent[root->data] = root->data; 

	while (!q.empty()) { 
		temp = q.front(); 
		q.pop(); 

		if (!temp->left && !temp->right) { 
			LeafData = temp->data; 
			break; 
		} 
		else { 

			if (temp->left) { 
				q.push(temp->left); 
				parent[temp->left->data] = temp->data; 
			} 

			if (temp->right) { 
				q.push(temp->right); 
				parent[temp->right->data] = temp->data; 
			} 
		} 
	} 

	printPath(LeafData, parent); 

	cout << LeafData << " "; 
} 

```
