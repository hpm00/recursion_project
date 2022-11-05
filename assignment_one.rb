def fibs(n)
    sequence = []
    n.times do |i|
      if i == 0
        sequence << 0
      elsif i == 1
        sequence << 1
      else 
        sequence << sequence[-1] + sequence[-2]
      end 
    end
    sequence
  end
  
  def fibs_rec(n)
    return [0] if n == 0
    return [0, 1] if n == 1
      sequence = fibs_rec(n - 1)
      sequence << sequence[-2] + sequence[-1]
  end 
  
  # recursion => one element of processing calls another instance of itself
  # if you call another instance, then the new instance has new, unrelated - 
  # - copies of all of its variables
  # loop => jumps back to the point where it started