def stock_picker(a)
	v = [0,0]
	x = 0 
	a.each_with_index do |buy, indexb|
		a[indexb+1 , a.length].each_with_index do |sell, indexs|
			if (sell - buy) > x
				v = [indexb,indexs+indexb+1]
				x = sell - buy
			end
		end
	end
	p v
end

