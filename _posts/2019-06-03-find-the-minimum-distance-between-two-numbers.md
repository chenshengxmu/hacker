---
layout: post
title: Find the minimum distance between two numbers
---
```java
int minDist(int arr[], int n, int x, int y)
{
	int i = 0;
	int min_dist = Integer.MAX_VALUE;
	int prev = 0;

	for (i = 0; i < n; i++)
	{
		if (arr[i] == x || arr[i] == y)
		{
			prev = i;
			break;
		}
	}
	i++;
	for (; i < n; i++)
	{
		if (arr[i] == x || arr[i] == y)
		{
			if (arr[prev] != arr[i] && (i - prev) < min_dist)
			{
				min_dist = i - prev;
			}
			prev = i;
		}
	}

	return min_dist;
}
```
