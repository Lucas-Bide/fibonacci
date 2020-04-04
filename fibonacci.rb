class Fibonacci

  def self.fibs(terms)
    a0 = 0;
    a1 = 1;
    fib = []

    for term in 0...terms
      if term == 0
        fib << a0
      elsif term == 1
        fib << a1
      else
        fib << fib[term-1] + fib[term-2]
      end
    end
    return fib
  end

  def self.fibs_rec(n)
    if n == 1 || n == 2
      Array.new(n).fill {|i| i}
    else
      temp = fibs_rec(n-1) 
      temp << temp[-1] + temp[-2]
    end
  end
end
