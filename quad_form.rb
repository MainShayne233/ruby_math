def is_ugly(n)
	n_s = n.to_s
	until n_s[0] == "." or n_s == ''
		n_s.slice!(0)
	end
	return false if n_s == ''
	return true if Float(n_s) > 0
	false
end

def square_factors(n)
	f = Array.new()
	for i in 1..n/2
		f.push(i) if n%i == 0 and i**0.5 == Integer(i**0.5)
	end
	f
end

def clean_sqrt(n)
	return n**0.5 if !is_ugly(n**0.5)
	f = square_factors(n)
	if f[-1] != 1
		return "#{f[-1]**0.5}(#{n/f[-1]})^0.5"
	else
		return "(#{n})^0.5"
	end
end





def quad_form(a,b,c)

	a = Float (a)
	b = Float (b)
	c = Float (c)


	sol1 = (-b+((b**2)-4*a*c)**0.5)/(2*a)

	sol2 = (-b-((b**2)-4*a*c)**0.5)/(2*a)


	if is_ugly(sol1)
		if is_ugly(((b**2)-4*a*c)**0.5)
			if b != 0
				b_s = "#{Integer(-b)}+"
			else
				b_s= ''
			end
			sol1 = "(#{b_s}(#{clean_sqrt(b**2-4*a*c)}))/(#{Integer(2*a)})"
		else
			sol1 = "#{Rational(Integer(-b+((b**2)-4*a*c)**0.5),Integer(2*a))}"
		end
	else
		sol1 = Integer(sol1)
	end

	if is_ugly(sol2)
		if is_ugly(((b**2)-4*a*c)**0.5)
			if b != 0
				b_s = "#{Integer(-b)}-"
			else
				b_s= ''
			end
			sol2 = "(#{b_s}(#{clean_sqrt(b**2-4*a*c)}))/(#{Integer(2*a)})"
		else
			sol2 = "#{Rational(Integer(-b-((b**2)-4*a*c)**0.5),Integer(2*a))}"
		end
	else
		sol2 = Integer(sol2)
	end

	puts sol1
	puts sol2

end

quad_form(1,-3,-4)
#puts clean_sqrt(4)
#puts is_ugly(2.0000)


