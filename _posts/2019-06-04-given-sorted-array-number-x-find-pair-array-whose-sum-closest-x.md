---
layout: post
title: Given a sorted array and a number x, find the pair in array whose sum is closest to x
---
```java
void printClosest(int arr[], int n, int x)
{
	int res_l = -1, res_r = -1;

	int l = 0, r = n - 1, diff = Integer.MAX_VALUE;

	while (l < r)
	{
		if (Math.abs(arr[l] + arr[r] - x) < diff)
		{
			res_l = l;
			res_r = r;
			diff = Math.abs(arr[l] + arr[r] - x);
		}
		if (arr[l] + arr[r] == x)
		{
			System.out.println(" The closest pair is " + arr[l] + " and " + arr[r]);
			System.exit(0);
		}
		else if (arr[l] + arr[r] > x)
		{
			r--;
		}
		else
		{
			l++;
		}
	}

	System.out.println(" The closest pair is " + arr[res_l] + " and " + arr[res_r]);
}
```
