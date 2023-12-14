function conky_cut(x)
  local res = conky_parse(x)
  return string.gsub(res, "%s+", "")
end

function conky_battery(x)
  local res = conky_parse(x)
  return string.gsub(res, "[%s%a%p]", "")
end