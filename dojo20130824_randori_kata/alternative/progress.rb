# Alternative solutions in free discussion, done after the dojo had finished

def ap_detector seq
  #size = seq.size
  #return true if size < 2
  #first = seq.first
  #candidate_reason = seq[1] - seq[0]
  #(0...size).all? { |i| seq[i] == first + candidate_reason * i }
  (1...seq.size).each {|i| return false if seq[1]-seq[0] != seq[i]-seq[i-1] }
  true

  # seq.size < 2 || (0...seq.size).all? {|i| seq[i] == seq[0] + (seq[1] - seq[0])*i}

end
