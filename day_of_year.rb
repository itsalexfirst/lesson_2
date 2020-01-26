day_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print 'Введите год: '
year = gets.to_i
print 'Введите номер месяца: '
month = gets.to_i
print 'введите число месяца: '
date = gets.to_i

day_in_month[1] = 29 if (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))

days = date
days += day_in_month.take(month - 1).sum(0)

puts days
