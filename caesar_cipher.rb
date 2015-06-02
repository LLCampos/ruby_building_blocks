# chr -> turns number into character
# ord -> turns character into number

def caesar_cipher (string, n=0)
	a = string.chars.map do |x|
		x.ord
	end
	a = a.map do |x| 
		(x - n).chr
	end
	puts a.join
end

caesar_cipher "triplo ats", 3