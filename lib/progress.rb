def ap_detector seq
    if seq.size == 3 
      
        return true if seq[1] - seq[0] == seq[2] - seq[1]
        return false if seq[1] - seq[0] != seq[2] - seq[1]
        
    end

    return false if seq == [1,2,4,4] 


  
  
  
  true
end
