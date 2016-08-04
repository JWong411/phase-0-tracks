class TodoList

  def initialize(items)
    @array = items
  end

  def get_items
    @array
  end

  def add_item(item)
    @array << item
  end

  def delete_item(item)
    @array.delete(item)
  end

  def get_item(index)
    @array[index]
  end

end
