---
layout: post
title: Find a pair with maximum product in array of Integers
---
```java
void maxProduct(int arr[], int n)
{
	if (n < 2)
	{
		System.out.println("No pairs exists");
		return;
	}

	if (n == 2)
	{
		System.out.println(arr[0] + " " + arr[1]);
		return;
	}

	int posa = Integer.MIN_VALUE;
	int posb = Integer.MIN_VALUE;

	int nega = Integer.MAX_VALUE;
	int negb = Integer.MAX_VALUE;

	for (int i = 0; i < n; i++)
	{
		if (arr[i] > posa)
		{
			posb = posa;
			posa = arr[i];
		}
		else if (arr[i] > posb)
		{
			posb = arr[i];
		}

		if (arr[i] < nega)
		{
			negb = nega;
			nega = arr[i];
		}
		else if (arr[i] < negb)
		{
			negb = arr[i];
		}
	}

	if (nega * negb > posa * posb)
	{
		System.out.println("Max product pair is {" + nega + ", " + negb + "}");
	}
	else
	{
		System.out.println("Max product pair is {" + posa + ", " + posb + "}");
	}
}
```
