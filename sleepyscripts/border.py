#!/usr/bin/env python

import sys

s=10
m=20
l=50

if len(sys.argv) < 2:
  print("="*l)
elif sys.argv[1] == 's':
  print("="*s)
elif sys.argv[1] == 'm':
  print("="*m)
elif sys.argv[1] == 'l':
  print("="*l)
elif sys.argv[1] == 'ss':
  print("="*s + "\n")
elif sys.argv[1] == 'ms':
  print("="*m + "\n")
elif sys.argv[1] == 'ls':
  print("="*l + "\n")
else:
  print("="*l)

sys.exit(0)