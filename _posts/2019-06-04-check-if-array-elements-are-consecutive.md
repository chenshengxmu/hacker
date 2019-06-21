---
layout: post
title: Check if array elements are consecutive
---
```java
boolean areConsecutive(int arr[], int n)
{
	if (n < 1)
	{
		return false;
	}

	int min = getMin(arr, n);

	int max = getMax(arr, n);

	if (max - min + 1 == n)
	{
		boolean visited[] = new boolean[n];
		for (int i = 0; i < n; i++)
		{
			if (visited[arr[i] - min] != false)
			{
				return false;
			}

			visited[arr[i] - min] = true;
		}

		return true;
	}
	return false;
}
```
