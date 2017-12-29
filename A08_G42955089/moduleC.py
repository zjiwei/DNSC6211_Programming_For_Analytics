# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 20:12:04 2017

@author: Lam
"""

import re
import pandas as pd
import numpy as np

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
    stopwords=pd.read_csv('stopwords.csv',names=['stopword'])
    swlist=[]
    for i in range(np.shape(stopwords)[0]):
        swlist.append(i)

    data=[]
    for i in text_data:
        for y in regex.findall(i):
            if y not in swlist:
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
    dics=sorted(data_dictionary.items(), key = lambda asd:asd[1],reverse=True)
    print("%-10s %7s %7s"%("WORD","Count 1","Count 2"))
    print("------------------------------------")
    for i in range(10):
        print("%-10s %7s %7s"%(dics[i][0].capitalize(),dics[i][1][0],dics[i][1][1]))