---
layout: post
title: Check if strings are rotations of each other or not
---
```java
boolean areRotations(String str1, String str2) 
{ 
	return (str1.length() == str2.length()) && 
		((str1 + str1).indexOf(str2) != -1); 
} 
```
