---
layout: post
---
```c++
int MoreThanHalfNum(int* numbers, int length)
{
	int result = numbers[0];
	int time = 1 ;
	for (int i = 1 ;i < length ; i++)
	{
		if (0 == time)
		{
			result = numbers[i] ;
			time++ ;
		}
		else if (numbers[i] == result)
		{
			time++;
		}
		else 
		{
			time-- ;
		}    
	}
	return result ;
}

```
