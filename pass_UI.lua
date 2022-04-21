--You cannot use this version in Lua Demo, as it will error.
ps = {}
function ps1()
       ps = {}
       print("Hello, welcome to my random number generator! How many characters would you like your password to have?")
       local move = tonumber(io.read())
       if type(move) == "number" and move > 0 then
            table.insert(ps, move)
    return ps2()
       else print("Please enter a number value and make sure it is greater than 0!")
            return ps1()
       end
 end

function ps2()
   print("Would you like to use special characters in your password? Y/N")
   local move = io.read()
   if move == "Y" or move == "y" or move == "N" or move == "n" then
      table.insert(ps, move)
      return ps3()
   else print("Please type either Y or N!")
        return ps2()
   end
end

function ps3()
    local chars = ""
    p = ""
    local len = tonumber(ps[1])
    if ps[2] == "Y" or ps[2] == "y" then
      print(ps[2])
      chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=+_)(*&^%$#@!/.,<>?';:{}|"
    else
      chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"
    end
    for i = 1, len do
       local r = math.random(#chars)
       local c = chars:sub(r,r)
       p = p .. c
     end
     print(p)
     return ps4()
end

function ps4()
     print("Would you like to create another password? Y/N")
     move = io.read()
     if move == "Y" or move == "y" then
       return ps1()
     else
       return
     end
end
ps1()
