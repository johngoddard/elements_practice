class Heap
  attr_reader :store

  def initialize(&prc)
    @store = []
    @prc = prc || proc {|a, b| a <=> b}
  end

  def peek
    @store.last
  end

  def insert(el)
    @store << el
    heapify_up
  end

  def remove
    raise 'Nothing to remove' if @store.empty?
    @store[0], @store[-1] = @store[-1], @store[0]
    to_return = @store.pop
    heapify_down
    to_return
  end
  
  private

  def parent_idx(idx)
    idx == 0 ? nil : (idx - 1) / 2
  end

  def child_indices(idx)
    indices = [2*idx + 1, 2*idx + 2]
    indices.select{|i| i < @store.length}
  end

  def heapify_up
    curr_idx = @store.length - 1
    parent_i = parent_idx(curr_idx)
   
   
    while  parent_i && @prc.call(@store[parent_i], @store[curr_idx]) == 1
      @store[parent_i], @store[curr_idx] = @store[curr_idx], @store[parent_i]
      @curr_idx = parent_i
      parent_i = parent_idx(parent_i)
    end
  end

  def heapify_down
    curr_idx = 0
    child_idx = child_indices(curr_idx)
    
    while child_idx.length > 0 
      children = child_idx.map{|i| @store[i]}
      min_child = ( children.length == 1 || @prc.call(children[0], children[1] < 0) ) ? children[0] : children[1]
      min_child_idx = min_child == children[0] ? child_idx[0] : child_idx[1]
       
      if @prc.call(@store[curr_idx], min_child) > 0
        @store[curr_idx], @store[min_child_idx] = @store[min_child_idx], @store[curr_idx]
        curr_idx = min_child_idx
        child_idx = child_indices(curr_idx)
      else
        break
      end
    end
  end
end
