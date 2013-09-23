# -*- coding: utf-8 -*-
"""
Created on Sat Aug 24 16:05:34 2013

@author: danilo
"""

def ap_detector(seq):
  return len({b - a for a, b in zip(seq, seq[1:])}) <= 1
  #return all(b - a == seq[1] - seq[0] for a, b in zip(seq, seq[1:]))

def test_size_2():
  assert ap_detector([1, 2])

def test_size_3():
  assert not ap_detector([1, 2, 5])
  assert not ap_detector([1, 2, 4])
  assert ap_detector([1, 3, 5])
  assert not ap_detector([1, 3, 6])

def test_size_4():
  assert ap_detector([1, 2, 3, 4])
  assert not ap_detector([1, 2, 4, 4])
