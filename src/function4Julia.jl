#=
function4Julia:
- Julia version: 1.1.0
- Author: bertking
- Date: 2019-04-30
=#

#=
    Julia定义函数的基本语法
    function  函数名(参数列表)
        函数体
    end
=#
 function max(x, y)
     if x > y
         x
         else
         y
     end
 end
println("The max  is $(max(5,6))")
println(max('a','b'))


#
#=
 Julia 中的紧凑型函数声明，函数体必须是一个单行表达式
 等价于：
 function add(x,y)
     x + y
 end
=#
 add(x, y) = x + y
println(add(2,3))
println(add(true,false))
# println(add("bert","king")) 字符串拼接使用"*",而不是"+"


# 当没有括号时，表达式(函数名) refers to 函数对象，可以像其它值一样被传递
sum = add
println("使用函数对象$(sum(5,6))")



#=Julia 函数参数的传递行为

虽然官方文档称Julia遵循的是"pass-by-sharing",即函数传参not copy
参见：1. https://stackoverflow.com/questions/34607967/julia-argument-passing-behavior
2. https://stackoverflow.com/questions/33002572/creating-copies-in-julia-with-operator
3. https://docs.julialang.org/en/v1/manual/faq/#Functions-1

总结一下：对于Array等对象符合上述情况，而Number，String不符合...需要区分赋值操作&变异操作
=#

#= Julia 默认值作用域的计算
默认值表达式，只有先前的参数才在作用域呢

只要使默认表达式在前，该处的定义似乎就意义不大...
=#
function defaultValue(v1,v2=v1,v3=1) # 这里的v2可以接受v1参数
	println("v1 = $v1,v2 = $v2")
end

defaultValue(2)

function defaultValue2(v1,v2=v3,v3=1) # 此处的v2 = v3中的v3跟后面参数中的v3没有任何关系
    println("v1 = $v1,v2=$v2")
end
defaultValue2(3,5)

function defaultValue3(v1,v2 =3,v3=v2)
    println("v1 = $v1,v2 = $v2,v3=$v3")
end
defaultValue3(1)