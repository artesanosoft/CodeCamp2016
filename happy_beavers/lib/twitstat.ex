defmodule TwitStat do
  alias TwitStat.Graph
  alias TwitStat.Twitter

  def to_screen_names([h|t]) do
    opts = Enum.map(t, &{:user_id, &1})
    Twitter.user_lookup(h, opts)
      |> Enum.map(&(&1.screen_name))
  end

  def followers(user) do
    _followers(user) |> to_screen_names |> Enum.sort
  end

  defp _followers(user) do
    Twitter.follower_ids(user, count: 5000).items 
  end

  def common_followers(user1, user2) do
    _common_followers(user1, user2) |> to_screen_names |> Enum.sort
  end

  defp _common_followers(user1, user2) do
    followers1 = _followers(user1) |> MapSet.new
    followers2 = _followers(user2) |> MapSet.new

    MapSet.intersection(followers1, followers2) 
      |> MapSet.to_list
  end

  def following(user) do
    _following(user) |> to_screen_names |> Enum.sort
  end

  defp _following(user) do
    Twitter.friend_ids(user, count: 5000).items 
  end

  def friends(user) do
    _friends(user) |> to_screen_names |> Enum.sort
  end

  defp _friends(user) do
    followers = _followers(user) |> MapSet.new
    following = _following(user) |> MapSet.new

    MapSet.intersection(followers, following) 
      |> MapSet.to_list
  end

  def common_friends(user1, user2) do
    _common_friends(user1, user2) |> to_screen_names |> Enum.sort
  end

  def _common_friends(user1, user2) do
    friends1 = _friends(user1) |> MapSet.new
    friends2 = _friends(user2) |> MapSet.new

    MapSet.intersection(friends1, friends2) 
      |> MapSet.to_list
  end

  def common_friends_graph(user1, user2) do
    _common_friends(user1, user2) 
      |> create_graph
      |> save_graph(user1, user2)
  end

  def create_graph(users) do
    g = users 
      |> Enum.reduce(Graph.new, &Graph.add_node(&2, &1))

    g = users
      |> Enum.reduce(g, &add_friend_edges(&2, &1))

    %{g | nodes: Enum.zip(g.nodes, to_screen_names(g.nodes))}
  end

  def add_friend_edges(graph, user) do
    u_friends = _friends(user) |> MapSet.new
    g_nodes = graph.nodes |> MapSet.new

    MapSet.intersection(u_friends, g_nodes) 
     |> MapSet.to_list
     |> Enum.reduce(graph, &Graph.add_edge(&2, user, &1))    
  end

  def save_graph(graph, user1, user2) do
    {:ok, file} = File.open "#{user1}_#{user2}.dot", [:write]

    IO.binwrite file, "graph G {\n"

    users = Enum.reduce(graph.nodes, HashDict.new, fn {id,name}, acc -> HashDict.put(acc, id, name) end)

    graph.nodes
    |> Enum.each((fn {id, name} -> IO.binwrite file, "  #{name}\n" end))

    graph.edges
    |> Enum.each((fn [h1 | [h2|_]] -> 
      user1 = HashDict.get(users, h1)
      user2 = HashDict.get(users, h2)
      IO.binwrite file, "  #{user1} -- #{user2}\n"
     end))

    IO.binwrite file, "}"

    File.close file
  end

end