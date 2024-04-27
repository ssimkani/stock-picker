def stock_picker(arr)
  hash_of_day_pairs_and_profits = {}

  for i in 0..(arr.length - 1)
    for t in (i + 1)..(arr.length - 1)
      hash_of_day_pairs_and_profits.store([i, t], arr[t] - arr[i])
    end
  end
  
end
