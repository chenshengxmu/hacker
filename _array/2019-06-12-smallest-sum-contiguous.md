---
layout: post
---
```java
// Java program to print smallest
// contiguous array sum 
class GFG { 

	static void minSubArraySum(int a[], int size) 
	{ 
		int min_so_far = Integer.MAX_VALUE, 
		    min_ending_here = 0,start = 0, 
		    end = 0, s = 0; 

		for (int i = 0; i < size; i++) 
		{ 
			min_ending_here += a[i]; 

			if (min_so_far < min_ending_here) 
			{ 
				min_so_far = min_ending_here; 
				start = s; 
				end = i; 
			} 

			if (min_ending_here < 0) 
			{ 
				min_ending_here = 0; 
				s = i + 1; 
			} 
		} 
		System.out.println("Maximum contiguous sum is "
				+ min_so_far); 
		System.out.println("Starting index " + start); 
		System.out.println("Ending index " + end); 
	} 

	// Driver code 
	public static void main(String[] args) 
	{ 
		int a[] = { -2, -3, 4, -1, -2, 1, 5, -3 }; 
		int n = a.length; 
		minSubArraySum(a, n); 
	} 
} 

// This code is contributed by prerna saini 

```
