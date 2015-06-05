
def bubble_sort arr 
	#while it is not sorted
	v = false
	while v == false
		v = true
		i = 0 
		#loop through the array in pairs
		while i < arr.length-1
			if arr[i] > arr[i+1]
				arr[i], arr[i+1] = arr[i+1], arr[i]
				v = false 
			end
			i += 1
		end
	end
	arr
end

def bubble_sort_by arr
	#while it is not sorted
	v = false
	while v == false
		v = true
		i = 0 
		#loop through the array in pairs
		while i < arr.length-1
			if yield(arr[i],arr[i+1]) < 0  
				arr[i], arr[i+1] = arr[i+1], arr[i]
				v = false 
			end
			i += 1
		end
	end
	arr
end