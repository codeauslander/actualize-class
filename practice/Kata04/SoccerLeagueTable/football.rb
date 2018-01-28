def conver_dat_to_array_hash(file)
  document = []
    while !file.eof? 
      line = file.readline.split(' ')
      document << line
      #p line
    end 
  return document
end 

file = File.open("football.dat", 'r')
document = conver_dat_to_array_hash(file)

def organize_football_data(document)
  document.delete_at(0)
  document.delete_at(18)
  return document
end 

document = organize_football_data(document)

def get_F_and_A(document)
  scores = []
  team = {}
  document.length.times do |row| 
    f = document[row][6].to_i
    a = document[row][8].to_i
    team = {team:document[row][1],F:f,A:a,diference: (f - a)}
    puts team
    scores << tea
m  end
  return scores
end 

def smallest_difference(document)
  scores = get_F_and_A(document)
  lowest = scores[0]
  scores.each do |team|
    if lowest[:diference] > team[:diference]
      lowest = team
    end
  end 
  print 'The lowest diference is:'
  p lowest
  return lowest
end 

smallest_difference(document)

