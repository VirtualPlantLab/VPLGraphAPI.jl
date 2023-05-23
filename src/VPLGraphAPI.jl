module VPLGraphAPI

#=
Abstract types for VPL-style graphs

These are meant to be used by any package that interacts with a VPL-style graph or its
components and do not require implementation-specific details. For example, a package that
generates geometry from a graph should define its methods for these abstract types, thus
allowing different implementations.
=#

"""
    VPLGraph

Abstract type for dynamic VPL-style graphs. Any method that needs to interact with a dynamic
VPL-style graph should be defined for `VPLGraph` unless implementation-specific details are
required.
"""
abstract type VPLGraph end

"""
    VPLStaticGraph

Abstract type for static VPL-style graph (collections of VPLGraphNode). Any method that
needs to interact with a static VPL-style graph should be defined for `VPLStaticGraph`
unless implementation-specific details are required.
"""
abstract type VPLStaticGraph end

"""
    VPLGraphNode

Abstract type for any node inside a VPL-style graph. Any method that needs to interact with
nodes inside a VPL-style graph should be defined for `VPLGraphNode` unless implementation-
specific details are required.
"""
abstract type VPLGraphNode end

"""
    VPLGraphEdge

Abstract type for any edge inside a VPL-style graph. Any method that needs to interact with
edges inside a VPL-style graph should be defined for `VPLGraphEdge` unless implementation-
specific details are required.
"""
abstract type VPLGraphEdge end

"""
    VPLGraphData

Abstract type for user-defined data stored inside a VPL-style graph itself (not a node or
edge inside the graph).
"""
abstract type VPLGraphData end

"""
    VPLNodeData

Abstract type for user-defined data stored inside nodes of a VPL-style graph.
"""
abstract type VPLNodeData end

"""
    VPLEdgeData

Abstract type for user-defined data stored inside edges of a VPL-style graph.
"""
abstract type VPLEdgeData end

#=
Accessors for VPL-style graphs

These are generic functions for methods that access data stored inside a VPL-style graph.
=#

"""
    data(g::VPLGraphNode)
    data(g::VPLGraphEdge)
    data(g::VPLGraph)

Extract the user-defined data stored inside a VPL-style node, edge or graph.
"""
function data end
data(g::VPLGraphNode) = nothing
data(e::VPLGraphEdge) = nothing
data(g::VPLGraph) = nothing

#=
Traversing VPL-style graphs

These are generic functions for methods that allow to traverse a VPL-style graph.
=#

"""
    is_root(g::VPLGraphNode)

Check if a node is the root of a graph.
"""
function is_root end
is_root(g::VPLGraphNode) = nothing

"""
    root(g::VPLGraph)
    root(g::VPLStaticGraph)

Return the node that is the root of a dynamic or static graph.
"""
function root end
root(g::VPLGraph) = nothing
root(g::VPLStaticGraph) = nothing

"""
    has_parent(g::VPLGraphNode)

Check if a node has a parent node.
"""
function has_parent end
has_parent(g::VPLGraphNode) = nothing

# parent would be part of the API but it is already defined in Base

"""
    has_ancestor(g::VPLGraphNode)

Check if a node has an ancestor node that meets some conditions.
"""
function has_ancestor end
has_ancestor(g::VPLGraphNode) = nothing

"""
    ancestor(g::VPLGraphNode)

Given a node, extract an ancestor that meets some conditions.
"""
function ancestor end
ancestor(g::VPLGraphNode) = nothing

"""
    is_leaf(g::VPLGraphNode)

Check if a node is a leaf of a graph.
"""
function is_leaf end
is_leaf(g::VPLGraphNode) = nothing

"""
    has_children(g::VPLGraphNode)

Check if a node has any children nodes.
"""
function has_children end
has_children(g::VPLGraphNode) = nothing

"""
    children(g::VPLGraphNode)

Given a node, extract its children nodes.
"""
function children end
children(g::VPLGraphNode) = nothing

"""
    has_descendant(g::VPLGraphNode)

Check if a node has a descendant node that meets some conditions.
"""
function has_descendant end
has_descendant(g::VPLGraphNode) = nothing

"""
    descendant(g::VPLGraphNode)

Given a node, extract the first descendant that meets some conditions.
"""
function descendant end
descendant(g::VPLGraphNode) = nothing

"""
    traverse(g::VPLGraph)

Traverse a graph and execute a given function for each node.
"""
function traverse end
traverse(g::VPLGraph) = nothing


#=
Domain Specific Language for building static VPL-style graphs

These are methods define on abstract types. They are meant to be used by any package that
builds a static VPL-style graph and do not require implementation-specific details.
=#
"""
    +(n1::VPLNodeData, n2::VPLNodeData)

Creates a graph with two nodes where `n1` is the root and `n2` is the insertion point.
```
"""
+(n1::VPLNodeData, n2::VPLNodeData) = nothing


end
