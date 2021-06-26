#!/usr/bin/env python

#---Params------------
content   = [i.rstrip('\n') for i in open('/Users/iyep/.zshrc', 'r').readlines()]
start_ind = content.index('#~~~START_FUNCTIONS')+1
stop_ind  = content.index('#~~~END_FUNCTIONS')
#---------------------

print("")
for i in range(start_ind, stop_ind):
  print(content[i])
print("")