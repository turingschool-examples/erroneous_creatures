require './lib/medusa'

RSpec.describe Medusa do
  it "has a name" do
    medusa = Medusa.new("Cassiopeia")

    expect(medusa.name).to eq("Cassiopeia")
  end

  it "can stare" do
    medusa = Medusa.new("Cassiopeia")

    expect(medusa).to respond_to(:stare)
  end

  it "has statues" do
    medusa = Medusa.new("Cassiopeia")

    expect(medusa).to respond_to(:statues)
  end

  it "when first created she has no statues" do
    medusa = Medusa.new("Cassiopeia")

    expect(medusa.statues.empty?).to eq(true)
  end

  it "when staring at a person she gains a statue" do
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)

    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq("Perseus")
  end

  it "when staring at a person that person turns to stone" do
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    expect(victim.stoned?).to eq(false)

    medusa.stare(victim)

    expect(victim.stoned?).to eq(true)
  end
end
