# frozen_string_literal: true

require './lib/linked_list'

list = LinkedList.new
p list.size

list.append('L')
list.append('M')
list.append('N')
list.append('O')
list.prepend('K')

p list.size
puts list.head
puts list.tail
puts list.at(3)
list.pop
puts list
p list.contains?('K')
p list.find('N')
puts list

