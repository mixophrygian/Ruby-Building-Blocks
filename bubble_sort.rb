def bubble_sort(arr)
	remaining_passes = arr.length
	while remaining_passes > 0
		i = 1
		while i < remaining_passes do
			if arr[i-1] > arr[i]
				arr[i-1], arr[i] = arr[i], arr[i-1]
			end
			i += 1
		end
		remaining_passes -= 1
	end
	arr
end

array = [4,3,78,2,0,2]
puts "Original array: " + array.to_s
puts "Bubble sorted array: " + bubble_sort(array).to_s