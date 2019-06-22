---
layout: post
---
```java
int findMaxSum(int[][] m, int rows, int cols)
{
	int maxSum = Integer.MIN_VALUE;

	for (int i = 0; i < rows; i++)
	{
		int[] tmp = new int[cols];
		for (int j = i; j < rows; j++)
		{
			for (int k = 0; k < cols; k++)
			{
				tmp[k] += m[j][k];
			}
			int tmpMax = maxSubArraySum(tmp, cols);
			if (tmpMax > maxSum)
			{
				maxSum = tmpMax;
			}
		}
	}

	return maxSum;

}
```
