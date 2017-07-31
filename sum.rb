
def calc (action, num_1, num_2)
	if action == "addition"
		calc = num_1 + num_2 

	elsif action == "subtract"
		calc = num_1 - num_2

	elsif action == "multiply"
		calc = num_1 * num_2

	elsif action == "divide"
		if num_2 == 0
			calc = "Does not exist."
		else 
			calc = num_1 / num_2
		end
	else
	end
	calc.to_s
end 
