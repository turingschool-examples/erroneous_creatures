require '.lib/unicorn'

RSpec.describe Unicorn do
  xit "has a name" do
    unicorn = Unicorn.new("Robert")

    expect(unicorn.name).to eq("Robert")
  end

  xit "is white by default" do
    unicorn = Unicorn.new("Margaret")

    expect(unicorn.color).to eq("white")
    expect(unicorn.white?).to eq(true)
  end

  xit "does not have to be white" do
    unicorn = Unicorn.new("Barbara", "purple")

    expect(unicorn.color).to eq("purple")
    expect(unicorn.white?).to eq(false)
  end

  xit "unicorn says sparkly stuff" do
    unicorn = Unicorn.new("Johnny")

    expect(unicorn.say "Wonderful!" ).to eq("**;* Wonderful! **;*")
    expect(unicorn.say "I don't like you very much." ).to eq("**;* I don't like you very much. **;*")
  end

  xit "unicorn can fly" do
    unicorn = Unicorn.new("Johnny")

    expect(unicorn.fly).to eq(true)
  end

  xit "unicorn can eat cotton candy" do
    unicorn = Unicorn.new("Johnny")

    expect(unicorn.eat).to eq("**;* yummmm cotton candy **;*")
  end

  xit "unicorn cannot fly while eating" do
    unicorn = Unicorn.new("Johnny")

    unicorn.eat

    expect(unicorn.fly).to eq(false)
  end
end
