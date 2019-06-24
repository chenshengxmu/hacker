---
layout: post
---
```java
// Java program to find out maximum 
// profit by buying and selling a 
// share atmost k times given 
// stock price of n days 

class GFG { 

	// Function to find out 
	// maximum profit by 
	// buying & selling a 
	// share atmost k times 
	// given stock price of n days 
	static int maxProfit(int[] price, 
			int n, 
			int k) 
	{ 

		// table to store results 
		// of subproblems 
		// profit[t][i] stores 
		// maximum profit using 
		// atmost t transactions up 
		// to day i (including day i) 
		int[][] profit = new int[k + 1][n + 1]; 

		// For day 0, you can't 
		// earn money irrespective 
		// of how many times you trade 
		for (int i = 0; i <= k; i++) 
			profit[i][0] = 0; 

		// profit is 0 if we don't 
		// do any transation 
		// (i.e. k =0) 
		for (int j = 0; j <= n; j++) 
			profit[0][j] = 0; 

		// fill the table in 
		// bottom-up fashion 
		for (int i = 1; i <= k; i++) 
		{ 
			for (int j = 1; j < n; j++) 
			{ 
				int max_so_far = 0; 

				for (int m = 0; m < j; m++) 
					max_so_far = Math.max(max_so_far, price[j] - 
							price[m] + profit[i - 1][m]); 

				profit[i][j] = Math.max(profit[i] [j - 1], 
						max_so_far); 
			} 
		} 

		return profit[k][n - 1]; 
	} 

	// Driver code 
	public static void main(String []args) 
	{ 
		int k = 2; 
		int[] price = { 10, 22, 5, 75, 65, 80 }; 
		int n = price.length; 
		System.out.println("Maximum profit is: " + 
				maxProfit(price, n, k)); 
	} 
} 

// This code is contributed by Anshul Aggarwal. 

// Java program to find out maximum 
// profit by buying and selling a 
// share atmost k times given stock 
// price of n days 
import java.io.*; 

class GFG { 

	// Function to find out maximum profit by 
	// buying & selling/ a share atmost k times 
	// given stock price of n days 
	static int maxProfit(int price[], 
			int n, int k) 
	{ 

		// table to store results of subproblems 
		// profit[t][i] stores maximum profit 
		// using atmost t transactions up to day 
		// i (including day i) 
		int profit[][] = new int[k + 1][ n + 1]; 

		// For day 0, you can't earn money 
		// irrespective of how many times you trade 
		for (int i = 0; i <= k; i++) 
			profit[i][0] = 0; 

		// profit is 0 if we don't do any 
		// transation (i.e. k =0) 
		for (int j = 0; j <= n; j++) 
			profit[0][j] = 0; 

		// fill the table in bottom-up fashion 
		for (int i = 1; i <= k; i++) 
		{ 
			int prevDiff = Integer.MIN_VALUE; 
			for (int j = 1; j < n; j++) 
			{ 
				prevDiff = Math.max(prevDiff, 
						profit[i - 1][j - 1] - 
						price[j - 1]); 
				profit[i][j] = Math.max(profit[i][j - 1], 
						price[j] + prevDiff); 
			} 
		} 

		return profit[k][n - 1]; 
	} 

	// Driver code 
	public static void main (String[] args) 
	{ 
		int k = 3; 
		int price[] = {12, 14, 17, 10, 14, 13, 12, 15}; 

		int n = price.length; 

		System.out.println("Maximum profit is: " + 
				maxProfit(price, n, k)); 
	} 
} 

// This code is contributed by Sam007 

```
