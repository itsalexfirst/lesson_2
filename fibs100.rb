fibs_hundred = [0, 1]

while (next_number = fibs_hundred [-1] + fibs_hundred [-2]) < 100
  fibs_hundred << next_number
end

print fibs_hundred
