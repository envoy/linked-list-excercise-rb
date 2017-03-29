require "spec_helper"

require "linked_list"

RSpec.describe LinkedList, "#push" do
  let(:list) { described_class.new }

  it "pushs one value" do
    list.push("foo")
    expect(list[0]).to eq("foo")
  end

  it "pushs two values" do
    list.push("bar")
    list.push("qux")

    expect(list[0]).to eq("bar")
    expect(list[1]).to eq("qux")
  end
end

RSpec.describe LinkedList, "#pop" do
  let(:list) { described_class.new }

  before do
    list.push("foo")
    list.push("bar")
    list.push("qux")
  end

  it "pops the last value off" do
    expect(list.pop).to eq("qux")
    expect(list.pop).to eq("bar")
    expect(list.pop).to eq("foo")
    expect(list.pop).to be_nil
  end
end

RSpec.describe LinkedList, "#delete" do
  let(:list) { described_class.new }

  before do
    list.push("foo")
    list.push("bar")
    list.push("qux")
  end

  it "deletes foo" do
    list.delete(0)

    expect(list[0]).to eq("bar")
    expect(list[1]).to eq("qux")
    expect(list[2]).to be_nil
  end

  it "deletes bar" do
    list.delete(1)

    expect(list[0]).to eq("foo")
    expect(list[1]).to eq("qux")
    expect(list[2]).to be_nil
  end

  it "deletes qux" do
    list.delete(2)

    expect(list[0]).to eq("foo")
    expect(list[1]).to eq("bar")
    expect(list[2]).to be_nil
  end

  it "raises an argument error for a negative value" do
    expect { list.delete(-1) }.to raise_error(ArgumentError)
  end

  it "deletes nothing for out of bounds" do
    expect(list.delete(20)).to be_nil

    expect(list[0]).to eq("foo")
    expect(list[1]).to eq("bar")
    expect(list[2]).to eq("qux")
  end
end

RSpec.describe LinkedList, "#each" do
  let(:list) { described_class.new }

  pending "implement me"
end

RSpec.describe LinkedList, "#reverse_each" do
  let(:list) { described_class.new }

  pending "implement me"
end

RSpec.describe LinkedList, "#get" do
  let(:list) { described_class.new }

  pending "implement me"
end

RSpec.describe LinkedList, "#set" do
  let(:list) { described_class.new }

  pending "implement me"
end
