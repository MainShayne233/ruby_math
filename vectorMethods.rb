def magnitude(v); (v[0]**2+v[1]**2+v[2]**2)**0.5; end

def vector_angle(v)
	Math.atan((v[1].to_f)/(v[0].to_f))*(180/Math::PI)
end

def dot_product(v1, v2)
	sum = 0; for i in 0..2; sum += (v1[i]*v2[i]); end; sum
end

def vector_product(v1, v2)
	p = Array.new()
	p.push(v1[1]*v2[2]-v1[2]*v2[1])
	p.push(v1[0]*v2[2]-v1[2]*v2[0])
	p.push(v1[0]*v2[1]-v1[1]*v2[0])
	p
end


v1 = [3,5,0]
v2 = [2,4,0]
