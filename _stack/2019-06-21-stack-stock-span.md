---
layout: post
---
```java
// Java implementation for brute force method to calculate stock span values 

import java.util.Arrays; 

class GFG { 
	// method to calculate stock span values 
	static void calculateSpan(int price[], int n, int S[]) 
	{ 
		// Span value of first day is always 1 
		S[0] = 1; 

		// Calculate span value of remaining days by linearly checking 
		// previous days 
		for (int i = 1; i < n; i++) { 
			S[i] = 1; // Initialize span value 

			// Traverse left while the next element on left is smaller 
			// than price[i] 
			for (int j = i - 1; (j >= 0) && (price[i] >= price[j]); j--) 
				S[i]++; 
		} 
	} 

	// A utility function to print elements of array 
	static void printArray(int arr[]) 
	{ 
		System.out.print(Arrays.toString(arr)); 
	} 

	// Driver program to test above functions 
	public static void main(String[] args) 
	{ 
		int price[] = { 10, 4, 5, 90, 120, 80 }; 
		int n = price.length; 
		int S[] = new int[n]; 

		// Fill the span values in array S[] 
		calculateSpan(price, n, S); 

		// print the calculated span values 
		printArray(S); 
	} 
} 
// This code is contributed by Sumit Ghosh 

// Java linear time solution for stock span problem 

import java.util.Stack; 
import java.util.Arrays; 

public class GFG { 
	// A stack based efficient method to calculate 
	// stock span values 
	static void calculateSpan(int price[], int n, int S[]) 
	{ 
		// Create a stack and push index of first element 
		// to it 
		Stack<Integer> st = new Stack<>(); 
		st.push(0); 

		// Span value of first element is always 1 
		S[0] = 1; 

		// Calculate span values for rest of the elements 
		for (int i = 1; i < n; i++) { 

			// Pop elements from stack while stack is not 
			// empty and top of stack is smaller than 
			// price[i] 
			while (!st.empty() && price[st.peek()] <= price[i]) 
				st.pop(); 

			// If stack becomes empty, then price[i] is 
			// greater than all elements on left of it, i.e., 
			// price[0], price[1], ..price[i-1]. Else price[i] 
			// is greater than elements after top of stack 
			S[i] = (st.empty()) ? (i + 1) : (i - st.peek()); 

			// Push this element to stack 
			st.push(i); 
		} 
	} 

	// A utility function to print elements of array 
	static void printArray(int arr[]) 
	{ 
		System.out.print(Arrays.toString(arr)); 
	} 

	// Driver method 
	public static void main(String[] args) 
	{ 
		int price[] = { 10, 4, 5, 90, 120, 80 }; 
		int n = price.length; 
		int S[] = new int[n]; 

		// Fill the span values in array S[] 
		calculateSpan(price, n, S); 

		// print the calculated span values 
		printArray(S); 
	} 
} 
// This code is contributed by Sumit Ghosh 

// Java program for a linear time 
// solution for stock span problem 
// without using stack 
class GFG { 

	// An efficient method to calculate 
	// stock span values implementing the 
	// same idea without using stack 
	static void calculateSpan(int A[], 
			int n, int ans[]) 
	{ 
		// Span value of first element is always 1 
		ans[0] = 1; 

		// Calculate span values for rest of the elements 
		for (int i = 1; i < n; i++) { 
			int counter = 1; 
			while ((i - counter) >= 0 && A[i] > A[i - counter]) { 
				counter += ans[i - counter]; 
			} 
			ans[i] = counter; 
		} 
	} 

	// A utility function to print elements of array 
	static void printArray(int arr[], int n) 
	{ 
		for (int i = 0; i < n; i++) 
			System.out.print(arr[i] + " "); 
	} 

	// Driver code 
	public static void main(String[] args) 
	{ 
		int price[] = { 10, 4, 5, 90, 120, 80 }; 
		int n = price.length; 
		int S[] = new int[n]; 

		// Fill the span values in array S[] 
		calculateSpan(price, n, S); 

		// print the calculated span values 
		printArray(S, n); 
	} 
} 

/* This code contributed by PrinciRaj1992 */

```
