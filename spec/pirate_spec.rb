require './lib/pirate'

RSpec.describe Pirate do
  it "has name" do
    pirate = Pirate.new("Jack")

    expect(pirate.name).to eq("Jack")
  end

  it "can have different name" do
    pirate = Pirate.new("Blackbeard")

    expect(pirate.name).to eq("Blackbeard")
  end

  it "is a scallywag by default" do
    pirate = Pirate.new("Jack")

    expect(pirate.job).to eq("Scallywag")
  end

  it "is not always a scallywag" do
    pirate = Pirate.new("Jack", "Cook")

    expect(pirate.job).to eq("Cook")
  end

  it "has an eye patch" do
    pirate = Pirate.new("Jack", "Cook")

    expect(pirate.patch).to eq(true)
  end


  it "isnt cursed by default" do
    pirate = Pirate.new("Jack")

    expect(pirate.cursed?).to eq(false)
  end

  it "becomes cursed after enough heinous acts" do
    pirate = Pirate.new("Jack")

    expect(pirate.cursed?).to eq(false)

    pirate.commit_heinous_act

    expect(pirate.cursed?).to eq(false)

    pirate.commit_heinous_act

    expect(pirate.cursed?).to eq(false)

    pirate.commit_heinous_act

    expect(pirate.cursed?).to eq(true)
  end

  it "it_speaks_with_an_arrrr" do
    pirate = Pirate.new("Jack")

    expect(pirate.say("well I'll be")).to eq("arrrr well I'll be")
  end
end
