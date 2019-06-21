---
layout: post
title: Longest Common Subsequence
---
```java
int lcsRecursive( char[] X, char[] Y, int m, int n ) 
{ 
	if (m == 0 || n == 0) 
		return 0; 
	if (X[m-1] == Y[n-1]) 
		return 1 + lcs(X, Y, m-1, n-1); 
	else
		return max(lcs(X, Y, m, n-1), lcs(X, Y, m-1, n)); 
} 

int lcsDP( char[] X, char[] Y, int m, int n ) 
{ 
	int L[][] = new int[m+1][n+1]; 

	for (int i=0; i<=m; i++) 
	{ 
		for (int j=0; j<=n; j++) 
		{ 
			if (i == 0 || j == 0) 
				L[i][j] = 0; 
			else if (X[i-1] == Y[j-1]) 
				L[i][j] = L[i-1][j-1] + 1; 
			else
				L[i][j] = max(L[i-1][j], L[i][j-1]); 
		} 
	} 
	return L[m][n]; 
} 

int[][] lcsArray(char[] X, char[] Y, int m, int n)
{
	int L[][] = new int[m + 1][n + 1];

	for (int i = 0; i <= m; i++)
	{
		for (int j = 0; j <= n; j++)
		{
			if (i == 0 || j == 0)
			{
				L[i][j] = 0;
			}
			else if (X[i - 1] == Y[j - 1])
			{
				L[i][j] = L[i - 1][j - 1] + 1;
			}
			else
			{
				L[i][j] = max(L[i - 1][j], L[i][j - 1]);
			}
		}
	}
	return L;

}

String lcsString(char[] X, char[] Y, int m, int n, int[][] L)
{
	int len = L[m][n];
	int index = len;

	char[] lcs = new char[len];

	int i = m - 1, j = n - 1;

	while (i >= 0 && j >= 0)
	{
		if (X[i] == Y[j])
		{
			index--;
			lcs[index] = X[i];
			i--;
			j--;
		}
		else if (L[i][j + 1] > L[i + 1][j])
		{
			i--;
		}
		else
		{
			j--;
		}
	}
	String s = new String(lcs);
	return s;

}

```
