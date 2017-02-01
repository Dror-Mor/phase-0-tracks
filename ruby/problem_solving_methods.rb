# #Release 0
def search_array(arr, int) 
	index_list = []
	for i in 0..arr.length 
		if int == arr[i]
			index_list << "#{i}"
		else
			
		end
	end
	if index_list == []
		puts "nil"
	else
		puts "The number #{int} appears in index:"
		puts index_list
	end
end

array = [1, 2, 3, 4, 5 , 3]

search_array(array, 3)

#Release 1

def fibonacci(num)
	arr = [0, 1]
	for i in 1..num-2
		arr << arr[i]+arr[i-1]
	end
	puts arr
	if arr.last == 218922995834555169026
		puts "Looks great!"
	else	
	end
end

fibonacci(100)

# Release 2
# create a method that gets an array
# it should iterate through the array and compares each array index value with the next one
# if the current index value is grearer the next - swap the two and continue to the next index
# if the current index value is less or equals to to next - move to the next index
# loop until no swaps are made throughout the entire array.

def buuble_sort(arr)
	loop do
		loop_break = true
		(arr.length-1).times do |i|
		if arr[i]>arr[i+1]
			arr[i], arr[i+1] = arr[i+1], arr[i]
			loop_break = false
		end
		end
	break if loop_break
	end
	puts arr
end


arr = [5, 3, 1, 8, 2, 9 ,4]
buuble_sort(arr)
