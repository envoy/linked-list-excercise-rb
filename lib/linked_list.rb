#
# A double linked list data structure
#
class LinkedList
  include Enumerable

  # @param enumerable [Enumerable] an enumerable object can be passed in order
  #                                to initialize the list
  def initialize(enumerable = nil)
    enumerable.each { |value| push(value) } if enumerable
  end

  # Iterate over the linked list
  # @return [void]
  def each(&block)
    # implement
  end

  # Iterate over the linked list backwards
  # @return [void]
  def reverse_each(&block)
    # implement
  end

  # Pushes a value in to the linked list
  #
  # @return [Boolean]
  def push(value)
    # implement
  end

  # Pops the last value off of the linked list
  #
  # @return [Object]
  def pop
    # implement
  end

  # Deletes a value from the list
  #
  # @return [Object]
  def delete(index)
    # implement
  end

  # Get the value at the index provided
  #
  # @param index [Integer]
  #
  # @return [Object]
  def get(index)
    # implement
  end
  alias [] get

  # Set the value at the index provided
  def set(index, value)
    # implement
  end
  alias []= set
end
