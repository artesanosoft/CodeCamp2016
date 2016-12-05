defmodule TwitStat.Twitter do

  @keys [
    [ 
      consumer_key: "kcGYdEMRfZaXh8Xs2D5lp2plF",
      consumer_secret: "Mh2bO9UpXO8RgJLD1HeztsRDtwf1EzHxMhlIrhKu05SmCfYIeD",
      access_token: "14120299-AoGztnaMbrDMDiZWbWl7nlJb77SsNX2aNxYfmxR7Z",
      access_token_secret: "q9MPLJ0Gh7PkeJwYif0NZz7wuFU0ERWUfbw9z5SpWyHyY"
    ],
    [
      consumer_key: "5tKdWbFQ2mXzGfHwTXosj1RFy",
      consumer_secret: "1m1XoTH8iwgdv7TDALbbsHqptTJ4idh5nWT3uD9v1hH5J84rKq",
      access_token: "805084170133340160-AWHja06OD4W0NBuGh8vFRtDgWFzpxZ4",
      access_token_secret: "ulruu2gH6rILSlKKIPotvaKQbL6kHOPa8J993SHXsUr7D" 
    ],
    [
      consumer_key: "DwKIjBIYu4AoiXr988sx7h5AY",
      consumer_secret: "WEOiJPC4E3qz6yLNM9HkS4wBFoFHVfxpJuCGJbXBpHm8cXqD4I",
      access_token: "805096837942218756-Pyn42OqUkhx5LFH4D6GNR6rXS2YGOHX",
      access_token_secret: "mFSrWOG5bv3a344L8QmNbdMcUtyGR2lKczGhbkikqMC6n"
    ],
    [
      consumer_key: "G5IxOPBAau5hFK1CXz65A",
      consumer_secret: "BlnhY8lP8PZ7Tx3QrfjKNJv0IdACSJfPmK7HsspGYs",
      access_token: "84340970-VyLUBitR9LITJFpg7SDXI8BaW7ER7WpwOI8T572p9",
      access_token_secret: "7l2NbbzX93eFZw3oiM4mErkQaa27tm4MzDuuujA9btnad"
    ]
  ]

  def init do
    {:ok, agent} = Agent.start_link fn -> @keys end, name: :keys_agent
  end

  def friend_ids(user, opts) do
    config
    ExTwitter.friend_ids(user, opts)
  end

  def follower_ids(user, opts) do
    config
    ExTwitter.follower_ids(user, opts)
  end

  def user_lookup(id, opts) do
    config
    ExTwitter.user_lookup(id, opts)
  end

  defp config do
    [h|t] = Agent.get_and_update(:keys_agent, fn(l=[h|t]) -> {l, t ++ [h]} end)
    ExTwitter.configure h
  end

end