require './dragon'

describe Dragon do

  it "has a name" do
    dragon = Dragon.new("fido", :brown, "jack")

    dragon.name.should == "fido"
  end

  it "has a rider" do
    dragon = Dragon.new("fido", :brown, "jack")

    dragon.rider.should == "jack"
  end

  it "has a color" do
    dragon = Dragon.new("fido", :brown, "jack")

    dragon.color.should == :brown
  end

  it "is born hungry" do
    dragon = Dragon.new("fido", :brown, "jack")

    dragon.hungry?.should == true
  end

  it "it has to eat three times" do
    dragon = Dragon.new("fido", :brown, "jack")

    dragon.eat
    dragon.eat
    dragon.eat
    dragon.hungry?.should == false
  end

end
