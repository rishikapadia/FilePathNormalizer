#!/usr/bin/ruby

def normalize()
	puts "\nEnter the filepath you wish to normalize:"
	name = gets
	list = name.split("/")
	i = list.count - 1

	while (i >= 0)
		if (list[i] == ".")
			list.delete_at(i)
		elsif (list[i] == "..")
			list.delete_at(i)
			i -= 1
			if (i > 0)
				list.delete_at(i)
			end
		end
		i -= 1
	end
	
	name = ""
	list.each do |i|
		name += "/#{i}"
	end

	puts name

end


normalize()

