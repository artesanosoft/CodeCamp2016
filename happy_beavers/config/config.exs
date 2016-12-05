# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :happy_beavers, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:happy_beavers, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"

config :extwitter, :oauth, [
   # consumer_key: "kcGYdEMRfZaXh8Xs2D5lp2plF",
   # consumer_secret: "Mh2bO9UpXO8RgJLD1HeztsRDtwf1EzHxMhlIrhKu05SmCfYIeD",
   # access_token: "14120299-AoGztnaMbrDMDiZWbWl7nlJb77SsNX2aNxYfmxR7Z",
   # access_token_secret: "q9MPLJ0Gh7PkeJwYif0NZz7wuFU0ERWUfbw9z5SpWyHyY"

   # consumer_key: "5tKdWbFQ2mXzGfHwTXosj1RFy",
   # consumer_secret: "1m1XoTH8iwgdv7TDALbbsHqptTJ4idh5nWT3uD9v1hH5J84rKq",
   # access_token: "805084170133340160-AWHja06OD4W0NBuGh8vFRtDgWFzpxZ4",
   # access_token_secret: "ulruu2gH6rILSlKKIPotvaKQbL6kHOPa8J993SHXsUr7D" 

   # consumer_key: "DwKIjBIYu4AoiXr988sx7h5AY",
   # consumer_secret: "WEOiJPC4E3qz6yLNM9HkS4wBFoFHVfxpJuCGJbXBpHm8cXqD4I",
   # access_token: "805096837942218756-Pyn42OqUkhx5LFH4D6GNR6rXS2YGOHX",
   # access_token_secret: "mFSrWOG5bv3a344L8QmNbdMcUtyGR2lKczGhbkikqMC6n"  

   consumer_key: "G5IxOPBAau5hFK1CXz65A",
   consumer_secret: "BlnhY8lP8PZ7Tx3QrfjKNJv0IdACSJfPmK7HsspGYs",
   access_token: "84340970-VyLUBitR9LITJFpg7SDXI8BaW7ER7WpwOI8T572p9",
   access_token_secret: "7l2NbbzX93eFZw3oiM4mErkQaa27tm4MzDuuujA9btnad"
]
