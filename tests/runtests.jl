include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(59, 89, 22, 6, 7)
@assert score(signal_case_1) == 130
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(74, 82, 23, 21, 9)
@assert score(signal_case_2) == 99
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(91, 73, 17, 22, 8)
@assert score(signal_case_3) == 139
@assert classify(signal_case_3) == "review"
