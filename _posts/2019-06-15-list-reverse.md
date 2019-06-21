---
layout: post
---
```java

Node reverseIterative(Node node) { 
	Node prev = null; 
	Node current = node; 
	Node next = null; 
	while (current != null) { 
		next = current.next; 
		current.next = prev; 
		prev = current; 
		current = next; 
	} 
	node = prev; 
	return node; 
} 

Node reverseUtil(Node curr, Node prev) { 

	if (curr.next == null) { 
		head = curr; 

		curr.next = prev; 

		return head; 
	} 

	Node next1 = curr.next; 

	curr.next = prev; 

	reverseUtil(next1, curr); 
	return head; 
} 

```
