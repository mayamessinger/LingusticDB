import os
import re
import urllib3
from bs4 import BeautifulSoup
from xml.etree import ElementTree as ET

def getBook(index):
	return BeautifulSoup(urllib3.PoolManager().request('GET', 'http://www.gutenberg.org/files/' + index + '/' + index + '.txt').data, 'lxml').get_text()

def numWords(index):
	print(len(getBook(index).split()))

def numSentences(index):
	print(len(getBook(index).split('.')))

def numLines(index):
	print(len(getBook(index).splitlines()))

def wps(index):
	print(numWords(index)/numSentences(index))

def populate():
	for file in os.listdir('./../books'):
		index = re.match('pg([0-9]*).rdf', file).group(1)
		minWords(index)
		numSentences(index)
		numLines(index)
		wps(index)