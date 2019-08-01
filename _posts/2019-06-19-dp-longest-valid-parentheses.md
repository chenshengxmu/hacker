---
layout: post
---
```java
int longestValidParentheses(String s) {
	int maxans = 0;
	int dp[] = new int[s.length()];
	for (int i = 1; i < s.length(); i++) {
		if (s.charAt(i) == ')') {
			if (s.charAt(i - 1) == '(') {
				dp[i] = (i >= 2 ? dp[i - 2] : 0) + 2;
			} else if (i - dp[i - 1] > 0 && s.charAt(i - dp[i - 1] - 1) == '(') {
				dp[i] = dp[i - 1] + ((i - dp[i - 1]) >= 2 ? dp[i - dp[i - 1] - 2] : 0) + 2;
			}
			maxans = Math.max(maxans, dp[i]);
		}
	}
	return maxans;
}
```

```c++
// C++ program to find length of the longest valid 
// substring 
#include<bits/stdc++.h> 
using namespace std; 

int findMaxLen(string s) 
{ 
	if (s.length() <= 1) return 0; 

	//Initialize curMax to zero 
	int curMax = 0; 

	vector<int> longest(s.size(), 0); 

	//Iterate over the string starting from second index 
	for (int i = 1; i < s.length(); i++) { 
		if (s[i] == ')' && i - longest[i - 1] - 1 >= 0 && 
				s[i - longest[i - 1] - 1] == '(') { 
			longest[i] = longest[i - 1] + 2 + 
				((i - longest[i - 1] - 2 >= 0) 
				 ? longest[i - longest[i - 1] - 2] : 0); 
			curMax = max(longest[i], curMax); 
		} 
	} 
	return curMax; 
} 

// Driver program 
int main() 
{ 
	string str = "((()()"; 
	cout << findMaxLen(str) << endl; 

	str = "()(()))))"; 
	cout << findMaxLen(str) << endl ; 

	return 0; 
} 
// This code is contributed by Vipul Lohani 
```
