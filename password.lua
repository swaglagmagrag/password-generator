local vars = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "x", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")"}

local answers = {
    yes = true,
    ye = true,
    y  = true,
    -- ...
    n = false,
    no = false,
    nah = false
}

local test = ""

local chars = 0

local uses = 0

local passwords = ""

function first()

    if uses == 0 then 
        io.write("Hello, welcome to my random number generator, what website are you wanting your password to be for? (EX: If your website is google.com then type google)")
    else
        io.write("Welcome back! What website are you wanting your password to be for?")
    end
    answer()
end

function answer()
    print("")    
    passwords = io.read()
    if (passwords) ~= "" then
        io.write("How long would you like your password to be?")
        length()
    end
end

function length()
    print("")
    chars = io.read()
    if tonumber(chars) then
        create()
    else
        io.write("You have to use numbers!")
        length()
    end
end

function create()

for i = 1,chars do
	test = test .. vars[math.random(#vars)]
end
print(test)
print("")
error = 0
uses = uses + 1
file = io.open(passwords .. ".txt", "w")
file:write(test)
file:close()
test = ""
again()
end

function again()
answers = io.read()
for k, v in pairs(answers) do
	io.write("Would you like to create more passwords? y/n")
    print("")
    	if v == true then
    	   	 first()
   		 elseif v == false then
    	    io.write("Thank you for using my random password generator!")
    	else
        	io.write("Please either say yes or no!")
        	print("")
        	again()
    	end
	end
end


first()
