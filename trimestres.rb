ventas = {
  Enero: 15000,
  Febrero: 22000,
  Marzo: 12000,
  Abril: 17000,
  Mayo: 81000,
  Junio: 13000,
  Julio: 21000,
  Agosto: 41200,
  Septiembre: 25000,
  Octubre: 21500,
  Noviembre: 91000,
  Diciembre: 21000
  }

quarters = {}
ventas.each_slice(3).with_index do |slice,index|
  quarters["Q#{index+1}"] = slice.inject(0){|sum, element| sum += element[1]}
end


#Tomo los valores solamente del hash y los separo con slice, 
#luego los sumo y los guardo en un nuevo hash

#ventas.values.each_slice(3).with_index do |slice,index|
  #quarters["Q#{index+1}"] = slice.reduce(:+)
#end

print quarters
