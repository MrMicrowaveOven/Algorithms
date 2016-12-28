def merge_k_lists(lists)
  return nil if lists.all? {|head| head == nil}
  if lists.any? {|head| head == nil}
    return merge_k_lists(lists.reject {|head| head == nil})
  else
    head_vals = []
    lists.each do |head|
      head_vals << head.val
    end
    smallest_head_index = head_vals.index(head_vals.min)
    smallest_head = lists[smallest_head_index]
    lists[smallest_head_index] = smallest_head.next
    smallest_head.next = merge_k_lists(lists)
    return smallest_head
  end
end

def merge_2_lists(head1, head2)
  return nil if !head1 and !head2
  if !head1
    return head2
  end
  if !head2
    return head1
  end
  if head1.val < head2.val
    head1.next = merge_2_lists(head1.next, head2)
    return head1
  else
    head2.next = merge_2_lists(head2.next, head1)
    return head2
  end
end
