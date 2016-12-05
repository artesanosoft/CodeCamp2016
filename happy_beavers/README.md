# HappyBeavers Team!

## Is it working?

Let's see

``` 
$ mix deps.get
...
$ mix test
```

If the tests run successfully, then yep, it's working.

## How to use it

```
$ iex -S mix
...
> TwitStat.common_friends_graph("user1", "user2")

```

A file named "#{user1}_#{user2}.dot" should be generated, then from your shell

```
$ dot -Tpng dot_file.dot -o out_file.png
```

and you'll have a nice pic of the social network shared by `user1` and `user2`.

## Examples

1. `d5lment` and `alcidesfp`

![d5lment and alcidesfp](https://github.com/artesanosoft/CodeCamp2016/blob/master/examples/d5lment_alcidesfp.png "d5lment and alcidesfp")

1. `hiphoox` and `chochosmx`

![hiphoox and chochosmx](https://github.com/artesanosoft/CodeCamp2016/blob/master/examples/hiphoox_chochosmx.png "hiphoox and chochosmx")
