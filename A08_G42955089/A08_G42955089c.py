# -*- coding: utf-8 -*-
"""
Created on Sun Oct 29 20:12:34 2017

@author: Lam
"""

import moduleC as MC
#import the first part of data
data1=[]
data1= MC.get_input("script01.txt")
#import the second part of data
data2=[]
data2= MC.get_input("script02.txt")
#count the frequencies of words in data
Words1={}
Words1=MC.process_data(data1)
Words2={}
Words2=MC.process_data(data2)
#sorted 
W1s=sorted(Words1.items(), key = lambda asd:asd[1],reverse=True)
#combine two parts into one
for i in Words1:
    if i not in Words2:
        Words2[i]=0
        
Words={}

for i in range(10):
    Words[W1s[i][0]]=Words1[W1s[i][0]],Words2[W1s[i][0]]
    if len(Words) == 10:
        break

#print the frequencies of words in data
MC.print_output(Words)