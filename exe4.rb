class Student
attr_accessor :name,:regno,:state,:branch,:cgpa
def initialize(regno=nil,name=nil,state=nil,branch=nil,cgpa=nil)
@regno,@name,@state,@branch,@cgpa=regno,name,state,branch,cgpa
end

a=Array.new
loop do
puts "1.Add Student","2.Display all Students","3.display Studet by Branch","4.Display Student by State","5.Search student by regno","6.Search by part of the name","7.Delete by roll no","8.Count student by State","9.Count student by Branch","10.exit"
opt=gets.chomp.to_i
case opt
	when 1
		s=Student.new
		puts "Enter Regno-Name-State-Branch-Cgpa:"
		s.regno,s.name,s.state,s.branch,s.cgpa=gets.chomp.to_i,gets.chomp,gets.chomp,gets.chomp,gets.chomp
		a << s
	when 2
		puts "All Students:"
		for i in 0...a.size
		puts a[i].regno.to_s+"	"+a[i].name+"	"+a[i].state+"	"+a[i].branch+"	"+a[i].cgpa.to_s
		end
	when 3
		puts "Enter Branch:"
		branch=gets.chomp
		for i in 0...a.size
		puts a[i].regno.to_s+"	"+a[i].name+"	"+a[i].state+"	"+a[i].branch+"	"+a[i].cgpa.to_s if a[i].branch.include? branch
		end
	when 4
		puts "Enter State:"
		state=gets.chomp
		for i in 0...a.size
		puts a[i].regno.to_s+"	"+a[i].name+"	"+a[i].state+"	"+a[i].branch+"	"+a[i].cgpa.to_s if a[i].state.include? state 
		end
	when 5
		puts "Enter regno:"
		regno=gets.chomp.to_i
		for i in 0...a.size
		puts a[i].regno.to_s+"	"+a[i].name+"	"+a[i].state+"	"+a[i].branch+"	"+a[i].cgpa.to_s if a[i].regno==regno 
		end
		
	when 6
		puts "Enter a part of name:"
		name=gets.chomp
		for i in 0...a.size
		puts a[i].regno.to_s+"	"+a[i].name+"	"+a[i].state+"	"+a[i].branch+"	"+a[i].cgpa.to_s if a[i].name.include? name
		end
	when 7
		puts "Enter regno to del:"
		regno=gets.chomp.to_i
		for i in 0...a.size
		a[i].delete if a[i].regno==regno 
		end
	when 8
		puts "Enter State for count:"
		state=gets.chomp
		count=0
		for i in 0...a.size
		if a[i].state.include? state 
		count+=1
		end
		end
		puts count
	when 9
		puts "Enter Branch for count:"
		branch=gets.chomp
		count=0
		for i in 0...a.size
		if a[i].branch.include? branch 
		count+=1
		end
		end
		puts count
		
	when 10
		puts "thank you".capitalize
	else
		puts "invalid option".capitalize
end

if opt==10
break
end

end
end
