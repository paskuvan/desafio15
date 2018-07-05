def archivo(string1, string2)
  file = File.open('ciudades.html', 'w')
  file.puts "<p> #{string1} </p>" #parrafo New York
  file.puts "<p> #{string2} </p>" #parrafo USA
  file.close
end

archivo('New York', 'USA')

def add_list(array)
  
  file = File.open('ciudades.html', 'a') #abre el archivo ciudades.html
  file.puts '<ul>' #lista
  array.each { |foo| file.puts "<li> #{foo} </li>" }
  file.puts '</ul>'
  return if array.count.zero? #contador de arrays. en ese caso, 5 ciudades
  file.close #cierra el archivo
end

ciudad = %w[Bronx, Queens, Brooklyn, Syracuse, Manhattan] #muestra las ciudades en una lista

add_list(ciudad)

def agrega_color(color) #agrega color
  file = File.open('ciudades.html', 'r')
  lines = file.readlines.map(&:length)
  print lines
end

agrega_color('color')