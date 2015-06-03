#transforms a letter into its codified form
def trans (x, n, c)
	y = c.index(x) + n
	if y > 25
		y -= 26
	end
	c[y]
end

def caesar_cipher (string, n=0)
	if n > 25 then n = n - (n/25)*26 end

	a = string.chars.map do |x|

		if x =~ /\W/ or x =~/\d/
			x
		elsif x =~ /[[:upper:]]/
			x = trans x, n, ("A".."Z").to_a
		else
			x = trans x, n, ("a".."z").to_a 
		end

	end
	puts a.join
end

