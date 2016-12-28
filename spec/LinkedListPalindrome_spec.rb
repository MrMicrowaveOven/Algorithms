require_relative "../lib/LinkedListPalindrome"

describe "is_palindrome" do
  before(:each) do
    @palC = Zadt::SinglyLinkedListNode.new(3)
    @palB = Zadt::SinglyLinkedListNode.new(2, @palC)
    @palA = Zadt::SinglyLinkedListNode.new(3, @palB)

    @non_palC = Zadt::SinglyLinkedListNode.new(3)
    @non_palB = Zadt::SinglyLinkedListNode.new(2, @non_palC)
    @non_palA = Zadt::SinglyLinkedListNode.new(1, @non_palB)
  end
  it "returns true if the linked list is a palindrome" do
    expect(is_palindrome(@palA)).to eq(true)
  end
  it "returns false if the linked list is not a palindrome" do
    expect(is_palindrome(@non_palA)).to eq(false)
  end
end
