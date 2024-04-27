def stock_picker(arr)
  hash_of_day_pairs_and_profits = {}

  for i in 0..(arr.length - 1)
    for t in (i + 1)..(arr.length - 1)
      hash_of_day_pairs_and_profits.store([i, t], arr[t] - arr[i])
    end
  end

  best_days = hash_of_day_pairs_and_profits.key(hash_of_day_pairs_and_profits.values.max)

  best_days
end
