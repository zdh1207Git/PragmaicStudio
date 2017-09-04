
def n_times
  1.upto(10) do |count|
    yield count
  end
end

n_times do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end
