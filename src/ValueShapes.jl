# This file is a part of ValueShapes.jl, licensed under the MIT License (MIT).

__precompile__(true)

"""
    ValueShapes

Provides a Julia API to describe the shape of values, like scalars, arrays
and structures.
"""
module ValueShapes

using ArgCheck
using ArraysOfArrays
using ChangesOfVariables
using Distributions
using ElasticArrays
using FillArrays
using InverseFunctions
using Random
using Statistics
using StatsBase

import ChainRulesCore
import IntervalSets
import Tables
import TypedTables

# Long-term, ChainRulesCore should be sufficient:
import ZygoteRules

using ChainRulesCore: AbstractTangent, Tangent, NoTangent, ZeroTangent, AbstractThunk, ProjectTo, unthunk, backing

include("value_shape.jl")
include("value_accessor.jl")
include("scalar_shape.jl")
include("array_shape.jl")
include("const_value_shape.jl")
include("named_tuple_shape.jl")
include("functions.jl")
include("distributions.jl")
include("const_value_dist.jl")
include("named_tuple_dist.jl")
include("reshaped_dist.jl")

end # module
