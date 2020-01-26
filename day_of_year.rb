day_of_month = [
  ['January', 31],
  ['February', 28],
  ['March', 31],
  ['April', 30],
  ['May', 31],
  ['June',30],
  ['July', 31],
  ['August', 31],
  ['September', 30],
  ['October', 31],
  ['November', 30],
  ['December', 31]
]

day_of_leap_month = [
  ['January', 31],
  ['February', 29],
  ['March', 31],
  ['April', 30],
  ['May', 31],
  ['June',30],
  ['July', 31],
  ['August', 31],
  ['September', 30],
  ['October', 31],
  ['November', 30],
  ['December', 31]
]

print 'Введите год: '
year = gets.to_i
print 'Введите номер месяца: '
month = gets.to_i
print 'введите число месяца: '
date = gets.to_i

if (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
  days = date
  i_month = month -1
  while i_month > 0
    days +=  day_of_leap_month [i_month - 1][1]
    i_month -=1
  end
  puts days
else
  days = date
  i_month = month -1
  while i_month > 0
    days +=  day_of_month [i_month - 1][1]
    i_month -=1
  end
  puts days
end
