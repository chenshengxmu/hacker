---
layout: post
title: Given an array A[] and a number x, check for pair in A[] with sum as x
---
```java

boolean hasArrayTwoCandidates(int A[], int arr_size, int sum)
{
	int l, r;

	Arrays.sort(A);

	l = 0;
	r = arr_size - 1;
	while (l < r)
	{
		if (A[l] + A[r] == sum)
		{
			return true;
		}
		else if (A[l] + A[r] < sum)
		{
			l++;
		}
		else
		{
			r--;
		}
	}
	return false;
}
```
