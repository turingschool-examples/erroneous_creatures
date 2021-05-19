require './lib/werewolf'

RSpec.describe Werewolf do
  it "has a name" do
    werewolf = Werewolf.new("David")

    expect(werewolf.name).to eq("David")
  end

  it "has a location" do
    werewolf = Werewolf.new("David","London")

    expect(werewolf.location).to eq("London")
  end

  it "is by default in human form" do
    werewolf = Werewolf.new("David","London")

    expect(werewolf.human?).to eq(true)
  end

  it "can change" do
    werewolf = Werewolf.new("David","London")

    expect(werewolf.respond_to?).to eq(:change!)
  end

  it "when starting as a human changing means it is no longer human" do
    werewolf = Werewolf.new("David","London")

    werewolf.change!

    expect(werewolf.human?).to eq(false)
  end

  it "when starting as a human changing turns it into a werewolf" do
    werewolf = Werewolf.new("David","London")

    werewolf.change!

    expect(werewolf.werewolf?).to eq(true)
  end

  it "when starting as a human changing a second time it becomes human again" do
    werewolf = Werewolf.new("David","London")

    expect(werewolf.human?).to eq(true)

    werewolf.change!
    werewolf.change!

    expect(werewolf.human?).to eq(true)
  end

  it "when starting as a werewolf changing a second time it becomes werewolf again" do
    werewolf = Werewolf.new("David","London")

    werewolf.change!

    expect(werewolf.werewolf?).to eq(true)

    werewolf.change!
    werewolf.change!

    expect(werewolf.werewolf?).to eq(true)
  end
end
