include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(49, 26, 12, 78)
@assert score(item) == 166
@assert lane(item) == "ship"
