def line deli
  if deli.empty?
    puts 'The line is currently empty.'
  else
    names = ""
    deli.each.with_index(1) do |name, number|
      names << "#{number}. #{name}"
    end

    puts "The line is currently: #{names}"
  end
end

def take_a_number deli, name
  deli.push name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving deli
  if deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    person = deli.shift
    puts "Currently serving #{person}."
  end
end
