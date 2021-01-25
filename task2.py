# -*- coding: utf-8 -*-
"""task2.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1HZ-ppgxi5UY0HQvZ6g1zXDBS3nPEVQFL
"""

def efficientjanitor(weight):
  numberoftrips = 0
  start = 0
  end = len(weight)-1
  
  while start<=end:
    if weight[start]+weight[end]<=3.0 and weight[start]+weight[end]>=1.01:
      
      start = start+1
      end = end - 1
      numberoftrips = numberoftrips+1

    if weight[start]+weight[end]>3.0:
      numberoftrips = numberoftrips+1
      end = end - 1
      
  return numberoftrips

    

#weight = [1.01, 1.991, 1.32, 1.4]
weight = [1.01, 1.01, 1.01, 1.4, 2.4]
weight.sort()
print(efficientjanitor(weight))