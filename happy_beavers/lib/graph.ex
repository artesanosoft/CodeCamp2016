defmodule TwitStat.Graph do
  defstruct nodes: [], edges: []

  def new, do: %TwitStat.Graph{}
  
  def add_node(graph, node) do
    new_nodes = [node | graph.nodes] |> Enum.sort |> Enum.dedup 
    %{graph | nodes: new_nodes}
  end

  def add_edge(graph, node1, node2) do
    new_edges = [ Enum.sort([node1, node2]) | graph.edges] |> Enum.sort |> Enum.dedup 
    %{graph | edges: new_edges}
  end
end