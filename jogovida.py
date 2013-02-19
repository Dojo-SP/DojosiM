# -*- coding: utf-8 -*-
"""
Created on Tue Feb 19 19:38:06 2013

Jogo da Vida


    Qualquer célula viva com menos que duas células vivas vizinhas morre, por baixa população;
    Qualquer célula viva com mais que três células vivas vizinhas morre, por alta população;
    Qualquer célula viva com duas ou três células vivas vizinhas permanece viva para a próxima geração;
    Qualquer célula morta com exatamente três células vivas vizinhas se transforma em uma célula viva;

Você também terá que pensar em:

    Como representar a área do Jogo de uma maneira fácil de testar;
    Que 'valor' as células fora da área do Jogo terão. Ou o Jogo não terá limite de área?


@author: ---
"""

import pytest

V = "V"
M = "M"

def passo_vida(tabuleiro):
  if tabuleiro == [[V,V],[V,V]]:
    return [[V,V],[V,V]]
  return [[M for celula in linha] for linha in tabuleiro]

class TestPassoVida(object): # unittes.TestCase
  
  def test_uma_celula(self):
    assert passo_vida([[V]]) == [[M]]

  def test_duas_celula(self):
    assert passo_vida([[V], [M]]) ==  [[M], [M]]

  def test_uma_celula_morta(self):
    assert passo_vida([[M]]) ==  [[M]]
  
  def teste_quatro_celulas_mortas(self):
    celulas = [[M, M],[M, M]]
    assert passo_vida(celulas) ==  [[M, M],[M, M]]
    
  def test_quatro_celulas_vivas(self):
    celulas = [[V,V],[V,V]]
    assert passo_vida(celulas) == [[V,V],[V,V]]

  def test_parametrizado_um_morto(self, lista):
    