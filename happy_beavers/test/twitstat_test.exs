defmodule TwitStatTest do
  use ExUnit.Case

  test "followers" do
  	["MachinesAreUs", "metallikito", "silmood"] = 
  		TwitStat.followers("tuitabeaver")
  end

  test "common followers" do
  	["MachinesAreUs", "metallikito", "silmood"] = 
  		TwitStat.common_followers("tuitabeaver", "hip_beaver")
  end

  test "friends" do
  	["MachinesAreUs", "metallikito", "rugi", "silmood"] = 
  		TwitStat.friends("hip_beaver")
  end

  test "common friends" do
  	["MachinesAreUs", "metallikito", "silmood"] =
  		TwitStat.common_friends("tuitabeaver", "hip_beaver") 
  end

  test "common friends graph" do
  	# g = TwitStat.common_friends_graph("tuitabeaver", "hip_beaver")

  	# %TwitStat.Graph{
  	# 	nodes: ["MachinesAreUs", "metallikito", "silmood"], 
  	#   edges: [{"MachinesAreUs", "metallikito"}, 
   #            {"MachinesAreUs", "silmood"},
   #            {"metallikito", "silmood"}] } = g

  end
end
