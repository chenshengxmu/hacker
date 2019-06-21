---
layout: post
title: Replace every element with the greatest element on right side
---
```java
void nextGreatest(int arr[])
{
	int size = arr.length;

	int max_from_right = arr[size - 1];

	arr[size - 1] = -1;

	for (int i = size - 2; i >= 0; i--)
	{
		int temp = arr[i];

		arr[i] = max_from_right;

		if (max_from_right < temp)
		{
			max_from_right = temp;
		}
	}
}
```
