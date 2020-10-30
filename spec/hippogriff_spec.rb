require './lib/hippogriff'

RSpec.describe Hippogriff do
  it "has a name" do
    hippogriff = Hippogriff.new("jane", :magenta)

    expect(hippogriff.name).to eq("jane")
  end

  it "can be any color" do
    hippogriff = Hippogriff.new("jane", :magenta)

    expect(hippogriff.color).to eq(:magenta)
  end

  it "can fly" do
    hippogriff = Hippogriff.new("jane", :magenta)

    expect(hippogriff).to respond_to(:fly)
  end

  it "has a moonrock sack" do
    hippogriff = Hippogriff.new("jane", :magenta)

    expect(hippogriff).to respond_to(:sack)
  end

  it "when created its sack is empty" do
    hippogriff = Hippogriff.new("jane", :magenta)

    expect(hippogriff.moonrocks).to eq([])
  end

  it "when it flies it collects a unique moonrock" do
    hippogriff = Hippogriff.new("jane", :magenta)
    rock = Moonstone.new("sparkly")

    hippogriff.fly(rock)

    expect(hippogriff.moonrocks.count).to eq(1)
    expect(hippogriff.moonrocks.first.color).to eq('sparkly')
  end

  it "when created the moonrock is not magical" do
    rock = Moonstone.new("sparkly")

    expect(rock.magic?).to eq(false)
  end

  it "when moonrock is magical when collected" do
    hippogriff = Hippogriff.new("jane", :magenta)
    rock = Moonstone.new("sparkly")

    hippogriff.fly(rock)

    expect(rock.magic?).to eq(true)
  end
end
