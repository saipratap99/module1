loop do
puts " + "," - "," * "," / "," ^ "," end "
puts "Enter number 1"
num=gets.chomp.to_i
op=gets.chomp
case op
when '+'
puts "Enter number 2"
num2=gets.chomp.to_i
puts num+num2
when '-'
puts "Enter number 2"
num2=gets.chomp.to_i
puts num-num2
when '*'
puts "Enter number 2"
num2=gets.chomp.to_i
puts num*num2
when '/'
puts "Enter number 2"
num2=gets.chomp.to_i
puts num.to_f/num2
when '^'
puts "Enter power"
num2=gets.chomp.to_i
puts num**num2


end
if op=="end"
break 
end

end
