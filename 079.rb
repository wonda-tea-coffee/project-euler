require 'tsort'

class Hash
  include TSort
  alias tsort_each_node each_key
  def tsort_each_child(node, &block)
    fetch(node).each(&block)
  end
end

h = {}
File.readlines('079.txt').each do |line|
  line.chomp!

  if h[line[2]].nil?
    h[line[2]] = Set.new([line[1]])
  else
    h[line[2]].add(line[1])
  end

  if h[line[1]].nil?
    h[line[1]] = Set.new([line[0]])
  else
    h[line[1]].add(line[0])
  end
end

h.keys.each do |key|
  h[key] = h[key].to_a
end
h['7'] = []

puts h.tsort.join
