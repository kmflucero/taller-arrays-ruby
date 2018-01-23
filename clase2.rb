
puts "ejercicio 1"
arreglo = [1,2,9,1,4,5,2,3,6,6]
puts "item 1"
puts  arreglo[0]
puts "item 2"
puts arreglo[-1]
puts "item 3"
arreglo.each do |v|
	puts v 
end
puts "item 4"
arreglo.each_with_index do |v, i|
	puts "position #{i} : valor #{i}"
end
puts "item 5"
arreglo.each_with_index do |v, i|
	puts "position #{i} : valor #{v}" if i%2==0
end

puts "ejercicio 2"
a = [1,2,3,9,1,4,5,2,3,6]
b = a.dup
puts "item 1"
a.pop
puts a
puts "item 2"
a.shift
puts a
puts "item 3"
if b.count.even?
 b.delete_at(b.count/2 - 1)
 puts b
elsif b.count.odd?
	b.delete_at(b.count/2)
	puts b
else
	puts "no existe"
end

puts "item 4"
if b[-1] != 1
    b.pop
    puts b
else
	puts b
end
puts "ejercicio 3"
puts "item 1"
c = [1,2,3,4,5,6]
d = []
while c[0]!=nil do d.push(c.pop) end
puts d

puts "item 2"
e = [1,2,3,9,1,4,5,2,3,6,6]
puts arr = e.reject { |e| e.even?}

puts "item 3"
suma = 0
e.each do |v|
suma+=v
end
puts suma
puts "item 4"
e = [1,2,3,9,1,4,5,2,3,6,6]
e4 = []
e.each do |v|
v+= 1
e4.push(v)
end
puts e4
puts "ejercicio 4"

products = %w(Producto1 Producto2 Producto3 Producto4)
html = ''
products.each do |v|
 html += "<div class='product'><p>"+ v +"</p></div>\n"
end
puts html

puts "ejercicio  5"

products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''
products.each_with_index do |v, i|
 html += "<div class='product'><p>#{v}</p><p>#{prices[i]}</p></div>\n"
end
puts html	

puts "ejercicio 6"
a1 = [1,2,3,9,12,31, "domingo"]
b1 = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]
puts "item 1"
print a1 + b1
puts "item 2"
print a1|b1
puts "item 3"
puts a1&b1
puts "item 4"
print a1.zip(b1)