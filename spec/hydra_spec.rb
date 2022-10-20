require './lib/hydra'

RSpec.describe Hydra do
  it "has a name" do
    hydra = Hydra.new("jane", :magenta)

    expect(hydra.name).to eq("jane")
  end

  it "can be any color" do
    hydra = Hydra.new("jane", :magenta)

    expect(hydra.color).to eq(:magenta)
  end

  it "can regenerate" do
    hydra = Hydra.new("jane", :magenta)

    expect(hydra).to respond_to(:regenerate)
  end

  it "has information about each of its heads" do
    hydra = Hydra.new("jane", :magenta)

    expect(hydra).to respond_to(:head_info)
  end

  it "when created it has one head that is the same color as the hydra" do
    hydra = Hydra.new("jane", :magenta)

    expect(hydra.heads.length).to eq(1)
    expect(hydra.heads.first.color).to eq("magenta")
  end

  it "when it regenerates it collects a unique new head" do
    hydra = Hydra.new("jane", :magenta)
    head = Head.new('fuschia')

    hydra.regenerate(head)

    expect(hydra.heads.count).to eq(1)
    expect(hydra.heads.first.color).to eq("fuschia")
  end

  it "when created the head is not magical" do
    head = Head.new("fuschia")

    expect(head.magic?).to eq(false)
  end

  it "head is magical when collected" do
    hydra = Hydra.new("jane", :magenta)
    rock = Head.new("fuschia")

    hydra.regenerate(head)

    expect(head.magic?).to eq(true)
  end
end
