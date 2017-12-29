# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 11:44:49 2017

@author: Lam
"""

import moduleA as MA
#import the first part of data
data=[]
data = MA.get_input("script01.txt")
#import the second part of data
b=[]
b = MA.get_input("script02.txt")
#combine them into one
for x in b:
    data.append(x)
#count the frequencies of letters in data
Letters={}
Letters=MA.process_data(data)
#print the frequencies of letters in data
MA.print_output(Letters)
