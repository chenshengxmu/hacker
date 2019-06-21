---
layout: post
title: Implement Forward DNS Look Up Cache
---
```c
#include<stdio.h> 
#include<stdlib.h> 
#include<string.h> 

#define CHARS 27 

#define MAX 100 

int getIndex(char c) 
{ 
	return (c == '.') ? 26 : (c - 'a'); 
} 

char getCharFromIndex(int i) 
{ 
	return (i == 26) ? '.' : ('a' + i); 
} 

struct trieNode 
{ 
	bool isLeaf; 
	char *ipAdd; 
	struct trieNode *child[CHARS]; 
}; 

void insert(struct trieNode *root, char *URL, char *ipAdd) 
{ 
	int len = strlen(URL); 
	struct trieNode *pCrawl = root; 

	for (int level = 0; level<len; level++) 
	{ 
		int index = getIndex(URL[level]); 

		if (!pCrawl->child[index]) 
			pCrawl->child[index] = newTrieNode(); 

		pCrawl = pCrawl->child[index]; 
	} 

	pCrawl->isLeaf = true; 
	pCrawl->ipAdd = new char[strlen(ipAdd) + 1]; 
	strcpy(pCrawl->ipAdd, ipAdd); 
} 

char *searchDNSCache(struct trieNode *root, char *URL) 
{ 
	struct trieNode *pCrawl = root; 
	int len = strlen(URL); 

	for (int level = 0; level<len; level++) 
	{ 
		int index = getIndex(URL[level]); 
		if (!pCrawl->child[index]) 
			return NULL; 
		pCrawl = pCrawl->child[index]; 
	} 

	if (pCrawl != NULL && pCrawl->isLeaf) 
		return pCrawl->ipAdd; 

	return NULL; 
} 

```
