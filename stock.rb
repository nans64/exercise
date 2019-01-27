def stock_picker(array)
  profit_pairs = []
  start = 0
  after = 1
  while ((start < (array.length - 1)) && (after < array.length))
    profit = array[after] - array[start]
    profit_calc = []
    profit_calc.push(profit, start, after)
    profit_pairs.push(profit_calc)
    after += 1
    if after == array.length
      start += 1
      after = start + 1
    end
  end
  answer = profit_pairs.sort.reverse[0]
  answer.shift
  p answer
end

stock_picker([17,3,6,9,15,8,6,1,10])