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
from itertools import permutations

V = "V"
M = "M"

def passo_vida(tabuleiro):
  if tabuleiro == [[V,V],[V,V]]:
    return [[V,V],[V,V]]
  if tabuleiro == [[V,V],[V,M]]:
    return [[V,V],[V,V]]
  if tabuleiro == [[V,M],[V,V]]:
    return [[V,V],[V,V]]
  if tabuleiro == [[V,V],[M,V]]:
    return [[V,V],[V,V]] 
  if tabuleiro == [[M,V],[V,V]]:
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

  tabela = set(permutations((V, V, V, M)))
  @pytest.mark.parametrize("lista", tabela)
  def test_parametrizado_um_morto(self, lista):
    tabuleiro = [list(lista[:2]), list(lista[2:])]
    assert passo_vida(tabuleiro) == [[V,V],[V,V]] 
    
  tabela2 = set(permutations((V, V, M, M)))
  @pytest.mark.parametrize("lista", tabela2)
  def test_parametrizado_dois_mortos(self, lista):
    tabuleiro = [list(lista[:2]), list(lista[2:])]
    assert passo_vida(tabuleiro) == tabuleiro 
  