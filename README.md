# VPLGraphAPI

[![CI](https://github.com/AleMorales/VPLGraphAPI.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/AleMorales/VPLGraphAPI.jl/actions/workflows/CI.yml?query=branch%3Amaster)
[![Coverage](https://codecov.io/gh/AleMorales/VPLGraphAPI.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/AleMorales/VPLGraphAPI.jl)
[![Aqua QA](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)
[![ColPrac](https://img.shields.io/badge/ColPrac-Contributor's%20Guide-blueviolet)](https://github.com/SciML/ColPrac)
[![SciML Code Style](https://img.shields.io/static/v1?label=code%20style&message=SciML&color=9558b2&labelColor=389826)](https://github.com/SciML/SciMLStyle)

This package is a component of the VPL ecosystem. It an API to integrate with dynamic graphs
that other packages can rely on. This package does not include an implementation of graphs, 
only the interface to the public API than every graph package within VPL should follow. 

Users should use the [VPL](https://github.com/VirtualPlantLab/VPL) package instead of this
one.