---
layout: post
title: Implement Reverse DNS Look Up Cache
---
```c
#include<stdio.h> 
#include<stdlib.h> 
#include<string.h> 

#define CHARS 11 

#define MAX 50 

int getIndex(char c) { return (c == '.')? 10: (c - '0'); } 

char getCharFromIndex(int i) { return (i== 10)? '.' : ('0' + i); } 

struct trieNode 
{ 
	bool isLeaf; 
	char *URL; 
	struct trieNode *child[CHARS]; 
}; 

void insert(struct trieNode *root, char *ipAdd, char *URL) 
{ 
	int len = strlen(ipAdd); 
	struct trieNode *pCrawl = root; 

	for (int level=0; level<len; level++) 
	{ 
		int index = getIndex(ipAdd[level]); 

		if (!pCrawl->child[index]) 
			pCrawl->child[index] = newTrieNode(); 

		pCrawl = pCrawl->child[index]; 
	} 

	pCrawl->isLeaf = true; 
	pCrawl->URL = new char[strlen(URL) + 1]; 
	strcpy(pCrawl->URL, URL); 
} 

char *searchDNSCache(struct trieNode *root, char *ipAdd) 
{ 
	struct trieNode *pCrawl = root; 
	int len = strlen(ipAdd); 

	for (int level=0; level<len; level++) 
	{ 
		int index = getIndex(ipAdd[level]); 
		if (!pCrawl->child[index]) 
			return NULL; 
		pCrawl = pCrawl->child[index]; 
	} 

	if (pCrawl!=NULL && pCrawl->isLeaf) 
		return pCrawl->URL; 

	return NULL; 
} 

```
