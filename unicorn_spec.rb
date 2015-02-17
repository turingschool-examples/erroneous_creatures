require './unicorn'

describe Unicorn do

  it "has a name" do
    unicorn = Unicorn.new("fred")
    unicorn.name.should == "fred"
  end

  it "is white by defualt" do
    unicorn = Unicorn.new("fred")
    unicorn.color.should == "white"
  end


  it "does not have to be white" do
    unicorn = Unicorn.new("fred", "purple")
    unicorn.color.should == "purple"
  end


  it "says sparkly stuff" do
    unicorn = Unicorn.new("fred")
    unicorn.say("hello").should == "**;* hello **;*"
  end
  

end
