---
layout: post
title: Merge Overlapping Intervals
---
```java
void mergeIntervals(Interval arr[])
{
	if (arr.length <= 0)
	{
		return;
	}

	Stack<Interval> stack = new Stack<>();

	Arrays.sort(arr, Comparator.comparingInt(i -> i.start));

	stack.push(arr[0]);

	for (int i = 1; i < arr.length; i++)
	{
		Interval top = stack.peek();

		if (top.end < arr[i].start)
		{
			stack.push(arr[i]);
		}
		else if (top.end < arr[i].end)
		{
			top.end = arr[i].end;
		}
	}

	System.out.print("The Merged Intervals are: ");
	while (!stack.isEmpty())
	{
		Interval t = stack.pop();
		System.out.print("[" + t.start + "," + t.end + "] ");
	}
}
```
