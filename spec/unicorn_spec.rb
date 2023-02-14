require './lib/unicorn'

RSpec.describe Unicorn do
  it "has a name" do
    unicorn = Unicorn.new("Robert")

    expect(unicorn.name).to eq("Robert")
  end

  it "is white by default" do
    unicorn = Unicorn.new("Margaret")

    expect(unicorn.color).to eq("white")
    expect(unicorn.white?).to eq(true)
  end

  it "does not have to be white" do
    unicorn = Unicorn.new("Barbara", "purple")

    expect(unicorn.color).to eq("purple")
    expect(unicorn.white?).to eq(false)
  end

  it "unicorn says sparkly stuff" do
    unicorn = Unicorn.new("Johnny")

    expect(unicorn.say "Wonderful!" ).to eq("**;* Wonderful! **;*")
    expect(unicorn.say "I don't like you very much." ).to eq("**;* I don't like you very much. **;*")
  end

  it "unicorn can fly" do
    unicorn = Unicorn.new("Johnny")

    expect(unicorn.fly).to eq(true)
  end

  it "unicorn can eat cotton candy" do
    unicorn = Unicorn.new("Johnny")

    expect(unicorn.eat).to eq("**;* yummmm cotton candy **;*")
  end

  it "unicorn cannot fly while eating" do
    unicorn = Unicorn.new("Johnny")

    unicorn.eat

    expect(unicorn.fly).to eq(false)
  end
end
