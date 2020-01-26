list_of_goods = Hash.new { |k,v| k[v] = {} }

loop do
  print 'Введите название товара или stop, чтобы закончить: '
  goods = gets.chomp
  break if goods == 'stop'

  print 'Введите цену за еденицу товара: '
  price = gets.chomp.to_f

  print 'Введите количество товара: '
  numbers = gets.chomp.to_f

  price_with_numbers = { price => numbers}
  list_of_goods[goods] = list_of_goods[goods].merge(price_with_numbers)
end

if list_of_goods.empty?
  puts 'Товары не добавлены'
else
  total_price = 0

  list_of_goods.each do |k, v|
    puts "\n\n#{k}"
    goods_price = 0
    v.each do |kk, vv|
      puts "цена: #{kk} количество: #{vv}"
      goods_price += (kk * vv)
      total_price += goods_price
    end

    puts "\nИтоговая сумма за #{k} = #{goods_price}"
  end

  puts "\n\nИтоговая сумма за покупки = #{total_price}"
end
