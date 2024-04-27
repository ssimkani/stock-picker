def stock_picker(arr)
  # Returns the days with the best stock pick
  #
  # @param arr [Array<Numeric>] list of stock prices
  # @return [Array<Integer>] the indices of the best days

  hash_of_day_pairs_and_profits = {}

  # for loops to iterate through the array and store the day pairs and profits
  for i in 0..(arr.length - 1)
    for t in (i + 1)..(arr.length - 1)
      hash_of_day_pairs_and_profits.store([i, t], arr[t] - arr[i])
    end
  end

  # returns the day pair with the best profit
  best_days =
    hash_of_day_pairs_and_profits.key(hash_of_day_pairs_and_profits.values.max)
  best_days
end
