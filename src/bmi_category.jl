"""
    bmi_category()

- Julia version: 1.1.0
- Author: bertking
- Date: 2019-04-28

# 1-体重过低 2-正常范围 3-肥胖前期 4-I度肥胖 5-II肥胖 6-）III度肥胖

# 对BMI指数进行分类


```jldoctest
julia>
```
"""

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