require './lib/wizard'

RSpec.describe Wizard do
  it "has name" do
    wizard = Wizard.new("Eric")

    expect(wizard.name).to eq("Eric")
  end

  it "can have different name" do
    wizard = Wizard.new("Alex")

    expect(wizard.name).to eq("Alex")
  end

  it "is bearded by default" do
    wizard = Wizard.new("Ben")

    expect(wizard.bearded?).to eq(true)
  end

  it "is not always bearded" do
    wizard = Wizard.new("Valerie", bearded: false)

    expect(wizard.bearded?).to eq(false)
  end

  it "has root powers" do
    wizard = Wizard.new("Sarah", bearded: false)

    expect(wizard.incantation("chown ~/bin")).to eq("sudo chown ~/bin")
  end

  it "has lots of root powers" do
    wizard = Wizard.new("Rob", bearded: false)

    expect(wizard.incantation("rm -rf /home/mirandax")).to eq("sudo rm -rf /home/mirandax")
  end
end
