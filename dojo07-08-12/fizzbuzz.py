#coding: utf-8
"""
Neste problema, você deverá exibir uma lista de 1 a 100, um em cada linha, com as seguintes exceções:

    Números divisíveis por 3 deve aparecer como 'Fizz' ao invés do número;
    Números divisíveis por 5 devem aparecer como 'Buzz' ao invés do número;
    Números divisíveis por 3 e 5 devem aparecer como 'FizzBuzz' ao invés do número'.

"""

import unittest

def fizzbuzz(i):
  if i % 3 == 0 :
    return "Fizz"
  elif i % 5 == 0:
    return "Buzz"
  return i


class FBTest(unittest.TestCase):

    def test_10(self):
        self.assertEqual(fizzbuzz(10), "Buzz")

    def test_7(self):
        self.assertEqual(fizzbuzz(7), 7)

    def test_1(self):
        self.assertEqual(fizzbuzz(1), 1)

    def test_2(self):
        self.assertEqual(fizzbuzz(2), 2)
        
    def test_3(self):
        self.assertEqual(fizzbuzz(3), "Fizz")

    def test_4(self):
        self.assertEqual(fizzbuzz(4), 4)

    def test_5(self):
        self.assertEqual(fizzbuzz(5), "Buzz")
    
    def test_6(self):
        self.assertEqual(fizzbuzz(6), "Fizz")
        
if __name__ == "__main__":
    unittest.main()
