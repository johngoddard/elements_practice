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
