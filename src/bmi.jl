#=
bmi:
- Julia version: 1.1.0
- Author: bertking
- Date: 2019-04-28
=#
println("Welcome to the Julia world...")

heights = rand(Float64,10)
weights = rand(Float64,10)

heights = heights .* (1.8 - 1.5) .+1.5
weights = weights .* (100 - 30) .+ 30

bmi(w, h) = w / (h^2)


indexes = broadcast(bmi,weights,heights)
# Julia 特有的 broadcast()函数

println(indexes)


# 利用function关键字的常规函数定义方式
function bmi_category(index::Float64)
    class = 0
    if index < 18.5
        class = 1
    elseif index < 24
        class = 2
    elseif index < 28
        class = 3
    elseif  index < 30
         class = 4
    elseif index < 40
        class = 5
    else
        class = 6
    end
        class
end


classes = bmi_category.(indexes)

println(classes)