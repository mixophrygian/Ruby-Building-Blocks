def bubble_sort_by(arr)
	remaining_passes = arr.length
	while remaining_passes > 0
		i = 1
		while i < remaining_passes do
			if yield(arr[i-1],arr[i]) < 0
				arr[i-1], arr[i] = arr[i], arr[i-1]
			end
			i += 1
		end
		remaining_passes -= 1
	end
	arr
end

array = ["hi","hello","hey"]
puts "The original array: #{array}"

sorted = bubble_sort_by(array) do |left,right|	
	right.length - left.length 
end

puts "The bloc-bubble-sorted array: " + sorted.to_s
