defmodule GraphTest do
  use ExUnit.Case
  alias TwitStat.Graph

  test "add node" do
  	g = 
  		Graph.new
  		|> Graph.add_node("user1")
  		|> Graph.add_node("user2")
  		|> Graph.add_node("user3")

  	%Graph{nodes: ["user1", "user2", "user3"], edges: _ } = g
  end

  test "add edge" do
  	g = 
  		Graph.new
  		|> Graph.add_node("user1")
  		|> Graph.add_node("user2")
  		|> Graph.add_node("user3")
  		|> Graph.add_edge("user1", "user2")
  		|> Graph.add_edge("user1", "user3")

  	%Graph{nodes: ["user1", "user2", "user3"], 
  	       edges: [["user1", "user2"], ["user1", "user3"]] } = g
  end


end