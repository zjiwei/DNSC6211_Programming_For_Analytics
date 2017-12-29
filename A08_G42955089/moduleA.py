# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 10:07:17 2017

@author: Lam
"""

import string

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
    """Reads a list and returns the frequency of letters in list.

    Args:
        text_data: the list of the data need to be counted
        
    Returns:
        a dictionary of the frequency of letters
    """
    
    LetterFreq={}

    for letter in string.ascii_lowercase:
        LetterFreq[letter] = 0
        
    data=[]
    for i in text_data:
        for y in i.split():
            for x in y:
                data.append(x)
    for i in data:
        if i in string.ascii_lowercase:
            LetterFreq[i] += 1
    
    return LetterFreq

def print_output(data_dictionary):
    """Reads a dictionary and print the value of dictionary.

    Args:
        data_dictionary: the dictionary of frequencies of letters
        
    Returns:
        print  the frequency of letters
    """
    for i in data_dictionary:
        print(i,data_dictionary[i],sep=' ')