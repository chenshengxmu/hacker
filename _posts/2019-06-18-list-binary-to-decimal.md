---
layout: post
---
```java
class Node 
{ 
	boolean data; 
	Node next; 
}; 

// Returns decimal value of binary linked list / 
int decimalValue( Node head) 
{ 
	// Initialized result 
	int res = 0; 

	// Traverse linked list 
	while (head != null) 
	{ 
		// Multiply result by 2 and add 
		// head's data 
		res = (res << 1) + (head.data?1:0); 

		// Move next 
		head = head.next; 
	} 
	return res; 
} 


```
