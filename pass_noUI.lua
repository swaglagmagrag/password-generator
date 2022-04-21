-- This version has no interface, and you have to edit the file directly to change the chars/length of the password. You can run this either with base lua, or on https://www.lua.org/cgi-bin/demo
local len = 30
local p = ""
local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=+_)(*&^%$#@!/.,<>?';:{}|"
for i = 1, len do
  local r = math.random(#chars)
  local c = chars:sub(r,r)
  p = p .. c
end
print(p)
