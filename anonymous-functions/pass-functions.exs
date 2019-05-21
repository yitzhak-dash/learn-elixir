times_2 = fn n -> n * 2  end
apply = fn (func, value) -> func.(value) end

res_12 = apply.(times_2, 6); # 12 <=
# ********************************

