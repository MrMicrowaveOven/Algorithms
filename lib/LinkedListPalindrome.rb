def is_palindrome(head)
  list = []
  node = head
  until node == nil
    list << node.val
    node = node.next
  end
  list == list.reverse
end
