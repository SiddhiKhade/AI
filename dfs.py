# import dictionary for graph
from collections import defaultdict

# function for adding edge to graph
graph = defaultdict(list)
def addEdge(graph,u,v):
	graph[u].append(v)

def generate_edges(graph):
	edges = []
 
	for node in graph:
		for neighbour in graph[node]:
			
			# if edge exists then append
			edges.append((node, neighbour))
	return edges

# declaration of graph as dictionary
print("\nInput tree nodes. Press 0 to end input\n")
parent=1
while not (parent==0):
    parent=int(input("Enter parent node: "))
    child=int(input("Enter child node: "))
    if parent==0 and child==0:
        break
    addEdge(graph,parent,child)


print(generate_edges(graph))

visited = set() # Set to keep track of visited nodes.

def dfs(visited, graph, node):
    if node not in visited:
        print (node)
        visited.add(node)
        for neighbour in graph[node]:
            dfs(visited, graph, neighbour)

start=int(input("\nWhat is the starting node?: "))

print("\nFollowing is the Depth-First Search\n")
dfs(visited, graph, start)


#tree to be used if input not given
# p:1
# c:2
# p:1
# c:3
# p:2
# c:4
# p:2
# c:5
# p:3
# c:6
# p:5
# c:6

# once all nodes are entered, enter p:0 and c:0 to start DFS
# start node: 1