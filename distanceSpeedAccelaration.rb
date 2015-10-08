def averageVelocity(pt1, pt2)
	(pt2[1]-pt1[1]).to_f/(pt2[0]-pt1[0]).to_f
end

puts averageVelocity([0,50],[10,-5])
