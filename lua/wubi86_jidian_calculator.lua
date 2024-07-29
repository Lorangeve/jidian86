--- 单目计算器
function wubi86_jidian_calculator(input, seg)
    if string.find(input, 'calc') ~= nil then -- 匹配 calc 开头的字符串
        local _, _, a, operation, b = string.find(input, "calc(%d+%.?%d*)([%+%-%*/])(%d+%.?%d*)")
        local result = 0
        if operation == '+' then
            result = a + b
        elseif operation == '-' then
            result = a - b
        elseif operation == '*' then
            result = a * b
        elseif operation == '/' then
            result = a / b
        end
        yield(Candidate("result: ", seg.start, seg._end, result, "计算器"))
    end
end

return wubi86_jidian_calculator
