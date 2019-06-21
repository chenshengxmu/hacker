---
layout: post
title: Floor in a sorted array
---
```java
int floorSearch(int arr[], int low, int high, int x)
{
	if (low > high)
	{
		return -1;
	}

	if (x >= arr[high])
	{
		return high;
	}

	if (x < arr[low])
	{
		return -1;
	}

	int mid = (low + high) / 2;

	if (x == arr[mid])
	{
		return mid;
	}
	else if (x < arr[mid])
	{
		if (mid > 0 && x >= arr[mid - 1])
		{
			return mid - 1;
		}
		else
		{
			return floorSearch(arr, low, mid - 1, x);
		}
	}
	else
	{
		if (mid < high -1 && x < arr[mid + 1])
		{
			return mid;
		}
		else
		{
			return floorSearch(arr, mid + 1, high, x);
		}
	}
}
```
