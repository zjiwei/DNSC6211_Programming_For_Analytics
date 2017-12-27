# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 19:30:59 2017

@author: Lam
"""

import moduleB as MB
#import the first part of data
data=[]
data = MB.get_input("script01.txt")
#import the second part of data
b=[]
b = MB.get_input("script02.txt")
#combine them into one
for x in b:
    data.append(x)
#count the frequencies of letters in data
Words={}
Words=MB.process_data(data)
#print the frequencies of letters in data
MB.print_output(Words)