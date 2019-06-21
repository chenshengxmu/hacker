---
layout: post
title: Count-strictly-increasing-subarrays
---
```java
int countIncreasing(int n)
{
	int cnt = 0;

	int len = 1;

	for (int i = 0; i < n - 1; ++i)
	{
		if (arr[i + 1] > arr[i])
		{
			len++;
		}
		else
		{
			cnt += (((len - 1) * len) / 2);
			len = 1;
		}
	}

	if (len > 1)
	{
		cnt += (((len - 1) * len) / 2);
	}

	return cnt;
}

```
