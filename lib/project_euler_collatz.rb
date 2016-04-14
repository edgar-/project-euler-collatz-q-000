def even_next(n)
  n/2
end

def odd_next(n)
  3*n + 1
end

def next_value(n)
  return even_next(n) if n % 2 == 0
  return odd_next(n)
end

def collatz(n)
  clz = [n]
  while n > 1
    n = next_value(n)
    clz << n
  end
  clz
end

def longest_collatz
  n = 999999
  longest_collatz  = [1]

  n.downto(2) do |i|
    if !longest_collatz.include?(i)
      current_collatz = collatz(i)
      if current_collatz.length > longest_collatz.length
        longest_collatz = current_collatz
      end
    end
  end
  longest_collatz[0]
end