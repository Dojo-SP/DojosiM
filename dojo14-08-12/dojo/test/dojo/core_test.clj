(ns dojo.core-test
  (:use clojure.test
        dojo.core))


(
  deftest a-test
    (
      testing "Teste defindo a resposta"
        (is (= (resposta) (vector 1 2 3)) )
    )
    (
      testing "Teste palpite correto" 
        (is (= (palpite 1 2 3) 0))
    )
    (
      testing "Teste palpite com suspeito errado" 
        (is (= (palpite 2 2 3) 1))
    )
    (
      testing "Teste palpite com lugar errado" 
        (is (= (palpite 1 3 3) 2))
    )
    (
      testing "Teste palpite com arma errada" 
        (is (= (palpite 1 2 4) 3))
    )
    (
      testing "Teste palpite com suspeito e lugar errados"
        (is (some #(= (palpite 3 3 3) %) [1 2]))
    )
    (
      testing "Teste detetive achar a resposta"
        (is (= (detetive caso) [1, 2, 3])
    )
)
)
    ; suspeito lugar arma
    ; (is (= 0 1))
