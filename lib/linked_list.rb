# frozen_string_literal: true

require './lib/node'

# Linked List that store nodes
class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    @head ||= node
    !@tail ? (@tail = node) : (@tail.next_node = node)
    @tail = node
  end

  def prepend(value)
    node = Node.new(value, @head)
    @head = node
  end

  def size(node = @head, count = 1)
    return 0 if @head.nil?
    return count if node.next_node.nil?

    size(node.next_node, count += 1)
  end

  def at(index)
    return @head if index.zero?

    current_node = @head.next_node
    count = 1
    until count == index
      current_node = current_node.next_node
      count += 1
    end
    current_node
  end

  def pop
    return if size < 1

    current_node = @head
    current_node = current_node.next_node until current_node.next_node == @tail
    current_node.next_node = nil
    @tail = current_node
  end

  def contains?(value)
    current_node = @head
    until current_node.next_node.nil?
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    current_node = @head
    count = 0
    until current_node.nil?
      return true if current_node.value == value

      count += 1
      current_node = current_node.next_node
    end
    nil
  end

  def to_s
    current_node = @head
    until current_node.nil?
      print "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    print 'nil'
  end
end
