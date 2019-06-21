---
layout: post
---
```java
void maxSum(int matrix[][])
{
	if(matrix==null||matrix.length==0)
		return;
	int max=0;
	int col=matrix[0].length,row=matrix.length;     
	for(int i=0;i<row;i++)
	{
		int arr[]=new int[col];
		for(int j=i;j<row;j++)
		{
			for(int k=0;k<col;k++)
			{
				arr[k]+=matrix[j][k];
			}
			max=Math.max(maxSum(arr), max);
		}
	}
	System.out.println(max);
}

int maxSubArraySum(int a[]) 
{ 
	int size = a.length; 
	int max_so_far = Integer.MIN_VALUE, max_ending_here = 0; 

	for (int i = 0; i < size; i++) 
	{ 
		max_ending_here = max_ending_here + a[i]; 
		if (max_so_far < max_ending_here) 
			max_so_far = max_ending_here; 
		if (max_ending_here < 0) 
			max_ending_here = 0; 
	} 
	return max_so_far; 
} 
```
