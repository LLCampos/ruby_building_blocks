def substring (string , array)
	result = {}
	string.downcase.split.map do |substring|
		array.map do |word|
			if /#{word}/ =~ substring
				if result[word]
					result[word] += 1
				else
					result[word] = 1
				end
			end
		end
	end
	puts result.sort.to_h
end
