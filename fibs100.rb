fibs_hundred = [0, 1]

while (fibs_hundred [-1] + fibs_hundred [-2]) < 100
  fibs_hundred << fibs_hundred [-1] + fibs_hundred [-2]
end

print fibs_hundred
