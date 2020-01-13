a=Array.new
loop do
puts "1.Insert","2.Minimum","3.Maximum","4.Sum","5.Average","6.Search","7.Display","8.DeleteAtIndex","9.DeleteValue","10.Exit"
opt=gets.chomp.to_i
case opt
	when 1
		a.push gets.chomp.to_i
	when 2
		puts "minimum=" + a.min.to_s
	when 3
		puts "maximum=" + a.max.to_s
	when 4
		puts "sum="+a.sum.to_s
	when 5
		avg=a.sum.to_f/a.size
		puts "average="+avg.to_s
	when 6
		puts "enter value to search="
		v=gets.chomp.to_i
		puts a.include? v
		puts a.index v
		
	when 7
		puts a
	when 8
		puts "enter index to del"
		a.delete_at gets.chomp.to_i
	when 9
		puts "enter value to del"
		a.delete gets.chomp.to_i
	when 10
		puts "thank you".capitalize
end

if opt==10
break
end

end
