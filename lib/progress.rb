def ap_detector seq
    if seq.size == 3 
      
        return true if seq[1] - seq[0] == seq[2] - seq[1]
        return false if seq[1] - seq[0] != seq[2] - seq[1]
        
    end
    if seq.size == 4 
       return true if seq[1] - seq[0] == seq[2] - seq[1] && seq[3] - seq[2] == seq[1] - seq[0]
       return false 
      
    end
    #if seq.size > 4
     # return true if seq.each
    #end


  
  
  
  true
end
