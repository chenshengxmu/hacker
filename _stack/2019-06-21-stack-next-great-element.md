---
layout: post
---
```java
// Simple Java program to print next 
// greater elements in a given array 

class Main 
{ 
	/* prints element and NGE pair for 
	   all elements of arr[] of size n */
	static void printNGE(int arr[], int n) 
	{ 
		int next, i, j; 
		for (i=0; i<n; i++) 
		{ 
			next = -1; 
			for (j = i+1; j<n; j++) 
			{ 
				if (arr[i] < arr[j]) 
				{ 
					next = arr[j]; 
					break; 
				} 
			} 
			System.out.println(arr[i]+" -- "+next); 
		} 
	} 

	public static void main(String args[]) 
	{ 
		int arr[]= {11, 13, 21, 3}; 
		int n = arr.length; 
		printNGE(arr, n); 
	} 
} 

//Java program to print next 
//greater element using stack 

public class NGE 
{ 
	static class stack 
	{ 
		int top; 
		int items[] = new int[100]; 

		// Stack functions to be used by printNGE 
		void push(int x) 
		{ 
			if (top == 99) 
			{ 
				System.out.println("Stack full"); 
			} 
			else
			{ 
				items[++top] = x; 
			} 
		} 

		int pop() 
		{ 
			if (top == -1) 
			{ 
				System.out.println("Underflow error"); 
				return -1; 
			} 
			else
			{ 
				int element = items[top]; 
				top--; 
				return element; 
			} 
		} 

		boolean isEmpty() 
		{ 
			return (top == -1) ? true : false; 
		} 
	} 

	/* prints element and NGE pair for 
	   all elements of arr[] of size n */
	static void printNGE(int arr[], int n) 
	{ 
		int i = 0; 
		stack s = new stack(); 
		s.top = -1; 
		int element, next; 

		/* push the first element to stack */
		s.push(arr[0]); 

		// iterate for rest of the elements 
		for (i = 1; i < n; i++) 
		{ 
			next = arr[i]; 

			if (s.isEmpty() == false) 
			{ 

				// if stack is not empty, then 
				// pop an element from stack 
				element = s.pop(); 

				/* If the popped element is smaller than 
				   next, then a) print the pair b) keep 
				   popping while elements are smaller and 
				   stack is not empty */
				while (element < next) 
				{ 
					System.out.println(element + " --> " + next); 
					if (s.isEmpty() == true) 
						break; 
					element = s.pop(); 
				} 

				/* If element is greater than next, then 
				   push the element back */
				if (element > next) 
					s.push(element); 
			} 

			/* push next to stack so that we can find next 
			   greater for it */
			s.push(next); 
		} 

		/* After iterating over the loop, the remaining 
		   elements in stack do not have the next greater 
		   element, so print -1 for them */
		while (s.isEmpty() == false) 
		{ 
			element = s.pop(); 
			next = -1; 
			System.out.println(element + " -- " + next); 
		} 
	} 

	public static void main(String[] args) 
	{ 
		int arr[] = { 11, 13, 21, 3 }; 
		int n = arr.length; 
		printNGE(arr, n); 
	} 
} 

// Thanks to Rishabh Mahrsee for contributing this code 

// A Stack based Java program to find next 
// greater element for all array elements 
// in same order as input. 
import java.util.Stack; 

class NextGreaterElement 
{ 

	static int arr[] = {11, 13, 21, 3}; 

	/* prints element and NGE pair for all 
	   elements of arr[] of size n */
	public static void printNGE() 
	{ 
		Stack<Integer> s = new Stack<>(); 
		int nge[] = new int[arr.length]; 

		// iterate for rest of the elements 
		for (int i = arr.length - 1; i >= 0; i--) { 

			/* if stack is not empty, then 
			   pop an element from stack. 
			   If the popped element is smaller 
			   than next, then 
			   a) print the pair 
			   b) keep popping while elements are 
			   smaller and stack is not empty */
			if (!s.empty()) { 
				while (!s.empty() && s.peek() <= arr[i]) { 
					s.pop(); 
				} 
			} 
			nge[i] = s.empty() ? -1 : s.peek(); 
			s.push(arr[i]); 

		} 
		for(int i = 0; i < arr.length; i++) 
			System.out.println(arr[i] + " --> " + nge[i]); 
	} 

	/* Driver program to test above functions */
	public static void main(String[] args) 
	{ 
		//NextGreaterElement nge = new NextGreaterElement(); 
		printNGE(); 
	} 
} 
// This code is contributed by Ashish Goyal 

```
