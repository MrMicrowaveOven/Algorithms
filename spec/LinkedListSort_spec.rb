require 'zadt'
require_relative '../lib/LinkedListSort.rb'

describe "merge_k_lists" do
  before(:each) do
    @llC = Zadt::SinglyLinkedListNode.new(8)
    @llB = Zadt::SinglyLinkedListNode.new(4, @llC)
    @llA = Zadt::SinglyLinkedListNode.new(2, @llB)

    @ll2C = Zadt::SinglyLinkedListNode.new(5)
    @ll2B = Zadt::SinglyLinkedListNode.new(3, @ll2C)
    @ll2A = Zadt::SinglyLinkedListNode.new(1, @ll2B)

  end
  it "merges two lists" do
    @merged_lists = merge_k_lists([@ll2A, @llA])
    expect(@merged_lists.val).to eq(1)
    expect(@merged_lists.next.val).to eq(2)
    expect(@merged_lists.next.next.val).to eq(3)
    expect(@merged_lists.next.next.next.val).to eq(4)
  end
  it "returns the list if there's only one" do
    @merged_single_list = merge_k_lists([@llA])
    expect(@merged_single_list.val).to eq(2)
    expect(@merged_single_list.next.val).to eq(4)
    expect(@merged_single_list.next.next.val).to eq(8)
  end
  it "returns an nil if given empty heads" do
    expect(merge_k_lists([nil])).to eq(nil)
    expect(merge_k_lists([nil, nil])).to eq(nil)
  end
end

describe "merge_2_lists" do
  before(:each) do
    @llC = Zadt::SinglyLinkedListNode.new(8)
    @llB = Zadt::SinglyLinkedListNode.new(4, @llC)
    @llA = Zadt::SinglyLinkedListNode.new(2, @llB)

    @ll2C = Zadt::SinglyLinkedListNode.new(5)
    @ll2B = Zadt::SinglyLinkedListNode.new(3, @ll2C)
    @ll2A = Zadt::SinglyLinkedListNode.new(1, @ll2B)

  end
  it "merges two lists" do
    @merged_lists = merge_2_lists(@ll2A, @llA)
    expect(@merged_lists.val).to eq(1)
    expect(@merged_lists.next.val).to eq(2)
    expect(@merged_lists.next.next.val).to eq(3)
    expect(@merged_lists.next.next.next.val).to eq(4)
  end
  it "returns the list if there's only one" do
    @merged_single_list = merge_2_lists(@llA, nil)
    expect(@merged_single_list.val).to eq(2)
    expect(@merged_single_list.next.val).to eq(4)
    expect(@merged_single_list.next.next.val).to eq(8)
  end
  it "returns nil if given empty heads" do
    expect(merge_2_lists(nil, nil)).to eq(nil)
  end
end
