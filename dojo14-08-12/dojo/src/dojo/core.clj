(ns dojo.core)
    
(                   
  defn resposta
    []
    (vector 1 2 3)
)

(defn palpite
    [suspeito lugar arma]
    (last
        (conj
            (filter
                #(not= % 0)
                    (map #(if(= (nth (resposta) (- % 1))
                        (nth (vector suspeito lugar arma) (- % 1))) 0 %) 
                        (vector 1 2 3))
            ) 
            0
         )
    )
)
    

