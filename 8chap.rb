# 8.1

def merge_lists(a, b)
  final_list_end = nil 
  final_list_head

  while a || b 
    if b.nil? || a.val < b.val
      final_list_end.next = a
      final_list_head = a unless final_list_head
      a = a.next
     else
      final_list_end.next = b
      final_list_head = b unless final_list_head
      b = b.next
    end
  end

  final_list_head
end

def reverse_sub_list(list, start_idx, end_idx)
  curr = list
  curr_idx = 1
  pre_sub_node

  until curr_idx = start_idx -1 
    curr = curr.next
    curr_idx += 1
  end
  
  pre_sub_node = curr
  reversed = curr.next
  curr = reversed.next

  until curr_idx > end_idx  
    next_node = curr.next 
    curr.next = reversed
    reversed = curr
    current = next_node

    curr_idx += 1
  end  
  
  
  pre_sub_node.next.next = curr
  pre_sub_node.next = prev
  
end
