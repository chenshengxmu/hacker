---
layout: post
title: Trie | (Insert and Search)
---
```java
class TrieNode
{
	TrieNode[] children = new TrieNode[ALPHABET_SIZE];

	boolean isEndOfWord;

	TrieNode()
	{
		isEndOfWord = false;
		for (int i = 0; i < ALPHABET_SIZE; i++)
		{
			children[i] = null;
		}
	}
}

void insert(String key)
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

	pCrawl.isEndOfWord = true;
}

boolean search(String key)
{
	TrieNode pCrawl = root;

	for (int level = 0; level < key.length(); level++)
	{
		int index = key.charAt(level) - 'a';

		if (pCrawl.children[index] == null)
		{
			return false;
		}

		pCrawl = pCrawl.children[index];
	}

	return pCrawl.isEndOfWord;
}
```
