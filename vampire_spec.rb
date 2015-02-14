require './vampire'

describe Vampire do

  it "has a name" do
    vampire = Vampire.new("jack")
    vampire.name.should == "jack"
  end

  it "keeps a pet bat by default" do
    vampire = Vampire.new("jack")
    vampire.pet.should == "bat"
  end


  it "can have other pets" do
    vampire = Vampire.new("jack", "kitty")
    vampire.pet.should == "kitty"
  end


  it "is thirsty by default" do
    vampire = Vampire.new("jack", "kitty")
    vampire.thirsty?.should == true
  end


  it "is not thristy after drinking" do
    vampire = Vampire.new("jack", "kitty")
    vampire.drink
    vampire.thirsty?.should == false
  end

end
