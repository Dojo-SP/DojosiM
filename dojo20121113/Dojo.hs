import Nomes
import Test.Hspec
import Data.Char
import Data.List

-- criar distancia de nomes
-- o nome com a menor distancia deve ser o escolhido
-- 
-- nao considerar espacos branco
-- nao distinguir a caixa alta e baixa
-- distancia de letras eh a diferencia do valor asc
-- distancia entre nomes eh igual a soma da distancia das letras
-- usar 13 como distancia entre uma letra sem correspondencia 
--
-- informar o nome escolhido


distanciaEntreCaracteres a b = abs $ ord (toUpper b) - ord (toUpper a)

tiraEspacos = filter (/= ' ')

distanciaDeTamanhos palavra1 palavra2 =
    abs $ (length palavra1 - length palavra2) * 13

distanciaEntrePalavras palavra1 palavra2 =
    distanciaDeTamanhos p1 p2
    + (sum $ zipWith distanciaEntreCaracteres p1 p2)
    where p1 = tiraEspacos palavra1
          p2 = tiraEspacos palavra2

comparaPalavras listaPalavras palavra = minimumBy encontra listaPalavras
    where encontra p1 p2 | distanciaEntrePalavras p1 palavra < distanciaEntrePalavras p2 palavra = LT
                         | distanciaEntrePalavras p1 palavra > distanciaEntrePalavras p2 palavra = GT
                         | otherwise                                                             = EQ
                         
main = hspec $ do
    describe "distanticia entre caracteres" $ do
        it "distancia entre A e B eh 1" $
            distanciaEntreCaracteres 'A' 'B' `shouldBe` 1
        it "dist entre A e C eh 2" $
            distanciaEntreCaracteres 'A' 'C' `shouldBe` 2
        it "distancia entre a e b eh 1" $
            distanciaEntreCaracteres 'a' 'b' `shouldBe` 1
        it "distancia entre a e B eh 1" $
            distanciaEntreCaracteres 'a' 'B' `shouldBe` 1
        it "distancia entre B e A eh 1" $
            distanciaEntreCaracteres 'B' 'A' `shouldBe` 1
    describe "distancia de palavras" $ do
        it "deveria calcular a distancia entre palavras de tamanhos iguais" $
            distanciaEntrePalavras "ABBA" "ABBB" `shouldBe` 1
        it "deveria calcular a distancia entre palavras com distancias maiores" $
            distanciaEntrePalavras "ABBA" "ABBC" `shouldBe` 2
        it "deveria calcular a distancia entre palavras de tamanhos diferentes" $
            distanciaEntrePalavras "ABBA" "ABB" `shouldBe` 13
        it "deveria calcular a distancia entre palavras sendo a primeira menor" $
            distanciaEntrePalavras "ABB" "ABBA" `shouldBe` 13
        it "deveria calcular a distancia entre palavras com espacos" $
          distanciaEntrePalavras "AB BA" "ABB" `shouldBe` 13
    describe "tirar espaco da palavra" $ do
        it "deveria tirar espaco da palavra" $
            tiraEspacos "AB BA" `shouldBe` "ABBA"

    describe "informar nome e encontrar palavra mais proxima" $ do
        it "colocar ABC e ABZ encontrar ABC como mais proxima de ABB" $
            comparaPalavras ["ABC", "ABZ"] "ABB" `shouldBe` "ABC"
        it "comparar ABZ com ABB retornar ABZ" $
            comparaPalavras ["ABZ"] "ABB" `shouldBe` "ABZ"
        it "colocar ABZ e ABC encontrar ABC como mais proxima de ABB" $
            comparaPalavras ["ABZ", "ABC"] "ABB" `shouldBe` "ABC"

    describe "informar o nome escolhido da lista de nomes" $ do
        it "colocar Lista dos nomes de meninas encontrar ?????? como mais proxima de HASKELL" $
            comparaPalavras (map fst nomesmeninas) "HASKELL" `shouldBe` "??????"
