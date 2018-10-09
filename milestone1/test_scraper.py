import urllib3
from bs4 import BeautifulSoup

book = BeautifulSoup(urllib3.PoolManager().request('GET', 'http://www.gutenberg.org/files/44836/44836.txt').data, 'lxml').get_text()

def numWords():
	print(len(book.split()))

def numSentences():
	print(len(book.split('.')))

def numLines():
	print(len(book.splitlines()))

numWords()
numSentences()
numLines()