local len = 30
local p = ""
local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=+_)(*&^%$#@!/.,<>?';:{}|"
for i = 1, len do
  local r = math.random(#chars)
  local c = chars:sub(r,r)
  p = p .. c
end
print(p)
