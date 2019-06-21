---
layout: post
title: Sorting array of strings (or words) using Trie
---
```java
class TrieNode
{
	TrieNode[] children = new TrieNode[26];

	int index;

	TrieNode()
	{
		index = -1;
		for (int i = 0; i < 26; i++)
		{
			children[i] = null;
		}
	}
}

void insert(String key, int i)
{
	TrieNode pCrawl = root;

	for (int level = 0; level < key.length(); level++)
	{
		int index = key.charAt(level) - 'a';
		if (pCrawl.children[index] == null)
		{
			pCrawl.children[index] = new TrieNode();
		}

		pCrawl = pCrawl.children[index];
	}

	pCrawl.index = i;
}

void preOrder(TrieNode root, String[] arr)
{
	for (int index = 0; index < ALPHABET_SIZE; index++)
	{
		if (root.children[index] != null)
		{
			if (root.children[index].index != -1)
			{
				System.out.println(arr[root.children[index].index]);
			}
			preOrder(root.children[index], arr);
		}
	}
}

```
