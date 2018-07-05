def peliculas(file_open)
  file = File.open(file_open, 'r') #abrir el archivo 'r' significa leer o read
  lines = file.readlines
  puts lines.count #contador de peliculas, en ese caso, 6 peliculas
  file.close
end

peliculas('peliculas.txt') #ubicar el archivo .txt y cuenta la cantidad de peliculas