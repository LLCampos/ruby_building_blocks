module Enumerable
	def my_each
	 	for i in 0..(self.length-1)
	 		yield(self[i]) 
	 	end
	 	self
	end 

	def my_each_with_index
		for i in 0..(self.length-1)
			yield(self[i],i)
		end
		self
	end

	def my_select
		a = []
		self.my_each do |x|
			if yield(x) 
				a << x
			end
		end
		a
	end

	def my_all?
		a = true
		self.my_each do |x|
			a = yield(x) && a 
		end
		a
	end

	def my_any?
		a = false 
		self.my_each do |x|
			a = yield(x) || a 
		end
		a
	end

	def my_none?
		a = false 
		self.my_each do |x|
			a = yield(x) || a 
		end
		!a
	end

	def my_count(&block)
		if block_given?
			self.my_select(&block).length
		else
			self.length
		end
	end

	def my_map(&block)
		a = []
		for i in 0..(self.length-1)
	 		a << yield(self[i]) 
	 	end
	 	a
	end

	def inject
		a = self[0]
		for i in 1..self.length-1
			a = yield(a,self[i])
		end
		a
	end

	def multiply_els 
		self.inject {|x,y| x*y}
	end


end


