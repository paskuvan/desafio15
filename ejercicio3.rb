def conta_palabras(file_open)
  file = File.open(file_open, 'r') #abre el archivo read
  lines = file.readlines
  lines.each do |string|
    conta = string.split(' ').map(&:length)
    puts conta
  end
end

conta_palabras('peliculas.txt')