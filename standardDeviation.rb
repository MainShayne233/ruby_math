def dataSet(dataArray)
	puts "input data (enter x when done): "
	until dataArray[-1] == "x\n"
		puts ""
		dataArray.push(gets)
		dataArray.pop if dataArray[-1] == "\n"
	end
	dataArray.pop
	dataArray.map! {|i| i.to_i}
end

def differenceSet(dataArray, xset, xbar)
	for x in dataArray
		xset.push(((x.to_f - xbar.to_f)))
	end
end

def standardDeviation()
	data = File.readlines('standardDevData.txt').map{|i| i.to_f}

	n = data.count

	total = data.reduce(:+)

	xbar = (total.to_f/n.to_f).to_f

	xi_xbar_dif = Array.new()

	differenceSet(data, xi_xbar_dif, xbar)

	xi_xbar_dif_sqd = xi_xbar_dif.map {|i| i**2} 

	num = xi_xbar_dif.reduce(:+)

	den = n-1

	s_dev = ((num/den)**0.5)

	rel_s_dev = (s_dev/xbar)

	rel_s_dev_per = "#{rel_s_dev*100}%"
	puts ""
	print xi_xbar_dif
	puts ""
	print xi_xbar_dif_sqd
	puts ""
	puts "Mean (Xbar) = #{xbar}"
	puts "Sum of xi-xbar squared = #{num}"
	puts "Standard Deviation = #{s_dev}"
	puts "Relative Standard Deviation = #{rel_s_dev}"
	puts "Relative Standard Devation Percent = #{rel_s_dev_per}"
	puts ""
end

standardDeviation()