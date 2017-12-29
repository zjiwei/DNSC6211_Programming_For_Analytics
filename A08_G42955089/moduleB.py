# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 19:30:29 2017

@author: Lam
"""

import re

def get_input(filename):
    """Reads a file and returns the file contents.

    Args:
        filename: the name of the file including the path
    Returns:
        a list with the file contents
    """
    myList = []
    with open(filename) as f:
        for line in f:
            if bool(line.strip()):
                myList.append(line.strip().lower())
    return myList

def process_data(text_data):
    """Reads a list and returns the frequency of words in list.

    Args:
        text_data: the list of the data need to be counted
        
    Returns:
        a dictionary of the frequency of words
    """
    pattern=r'[a-z\']{1,}'
    regex=re.compile(pattern)
    
    data=[]
    for i in text_data:
        for y in regex.findall(i):
            data.append(y)
                
    WordFreq={}

    for word in data:
        WordFreq[word] = 0
                
    for i in data:
        WordFreq[i] += 1
    
    return WordFreq

def print_output(data_dictionary):
    """Reads a dictionary and print the value of dictionary.

    Args:
        data_dictionary: the dictionary of frequencies of words
        
    Returns:
        print  the frequency of words
    """
    for i in data_dictionary:
        print(i.capitalize(),data_dictionary[i],sep=' ')