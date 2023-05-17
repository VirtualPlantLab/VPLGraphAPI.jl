using Test
import VPLGraphAPI

module APItest

import VPLGraphAPI: VPLGraph, VPLGraphNode, VPLGraphEdge, VPLGraphData, VPLNodeData,
                    VPLEdgeData

struct Graph <: VPLGraph end
struct GraphNode <: VPLGraphNode end
struct GraphEdge <: VPLGraphEdge end
struct GraphData <: VPLGraphData end
struct NodeData <: VPLNodeData end
struct EdgeData <: VPLEdgeData end

end

let
    import .APItest

    # Create dummy types that inherit from the abstract types
    graph = APItest.Graph()
    node = APItest.GraphNode()
    edge = APItest.GraphEdge()
    graphdata = APItest.GraphData()
    nodedata = APItest.NodeData()
    edgedata = APItest.EdgeData()

    # Test the default fallback methods
    @test VPLGraphAPI.data(graph) === nothing
    @test VPLGraphAPI.data(node) === nothing
    @test VPLGraphAPI.data(edge) === nothing

    @test VPLGraphAPI.is_root(node) === nothing
    @test VPLGraphAPI.has_parent(node) === nothing
    @test VPLGraphAPI.has_ancestor(node) === nothing
    @test VPLGraphAPI.ancestor(node) === nothing
    @test VPLGraphAPI.is_leaf(node) === nothing
    @test VPLGraphAPI.has_children(node) === nothing
    @test VPLGraphAPI.children(node) === nothing
    @test VPLGraphAPI.has_descendant(node) === nothing
    @test VPLGraphAPI.descendant(node) === nothing
    @test VPLGraphAPI.traverse(graph) === nothing
end
