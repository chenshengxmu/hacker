---
layout: post
---
```java
boolean isValid(String s) {
	Stack<Character> stack = new Stack<Character>();
	for (int i = 0; i < s.length(); i++) {
		if (s.charAt(i) == '(') {
			stack.push('(');
		} else if (!stack.empty() && stack.peek() == '(') {
			stack.pop();
		} else {
			return false;
		}
	}
	return stack.empty();
}

// Java program for checking 
// balanced Parenthesis 

/* Return true if expression has balanced 
   Parenthesis */
boolean areParenthesisBalanced(char exp[]) 
{ 
	/* Declare an empty character stack */
	stack st=new stack(); 

	/* Traverse the given expression to 
	   check matching parenthesis */
	for(int i=0;i<exp.length;i++) 
	{ 

		/*If the exp[i] is a starting 
		  parenthesis then push it*/
		if (exp[i] == '{' || exp[i] == '(' || exp[i] == '[') 
			st.push(exp[i]); 

		/* If exp[i] is an ending parenthesis 
		   then pop from stack and check if the 
		   popped parenthesis is a matching pair*/
		if (exp[i] == '}' || exp[i] == ')' || exp[i] == ']') 
		{ 

			/* If we see an ending parenthesis without 
			   a pair then return false*/
			if (st.isEmpty()) 
			{ 
				return false; 
			} 

			/* Pop the top element from stack, if 
			   it is not a pair parenthesis of character 
			   then there is a mismatch. This happens for 
			   expressions like {(}) */
			else if ( !isMatchingPair(st.pop(), exp[i]) ) 
			{ 
				return false; 
			} 
		} 

	} 

	/* If there is something left in expression 
	   then there is a starting parenthesis without 
	   a closing parenthesis */

	if (st.isEmpty()) 
		return true; /*balanced*/
	else
	{ /*not balanced*/
		return false; 
	} 
} 


```
