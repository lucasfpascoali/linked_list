# frozen_string_literal: true

# Node of a linked list
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def to_s
    puts "data: #{@data}, next_node: #{@next_node}"
    puts @value
  end
end
