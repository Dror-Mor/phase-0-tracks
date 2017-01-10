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

