require './lib/centaur'

RSpec.describe Centaur do
  it "has a name" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.name).to eq("George")
  end

  it "has a horse breed" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.breed).to eq("Palomino")
  end

  it "has excellent bow skills" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.shoot).to eq("Twang!!!")
  end

  it "makes a horse sound when it runs" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.run).to eq("Clop clop clop clop!!!")
  end

  it "starts not cranky" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.cranky?).to eq(false)
  end

  it "starts standing up" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.standing?).to eq(true)
  end

  it "gets cranky after running or shooting a bow 3 times" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.cranky?).to eq(false)

    centaur.shoot
    centaur.run
    centaur.shoot

    expect(centaur.cranky?).to eq(true)
  end

  it "will not shoot a bow when cranky" do
    centaur = Centaur.new("George","Palomino")

    3.times { centaur.shoot }

    expect(centaur.shoot).to eq("NO!")
  end

  it "will not run when cranky" do
    centaur = Centaur.new("George","Palomino")

    3.times { centaur.shoot }

    expect(centaur.shoot).to eq("NO!")
  end

  it "will not sleep when standing" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.sleep).to eq("NO!")
  end

  it "can lay down" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur).to respond_to(:lay_down)
  end

  it "is not standing after laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.standing?).to eq(false)
    expect(centaur.laying?).to eq(true)
  end

  it "can sleep when laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.sleep).to eq("NO!")
  end

  it "cannot shoot a bow when laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.shoot).to eq("NO!")
  end

  it "cannot run when laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.run).to eq("NO!")
  end

  it "can stand up" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down
    centaur.stand_up

    expect(centaur.standing?).to eq(true)
  end

  it "is no longer cranky after sleeping" do
    centaur = Centaur.new("George","Palomino")

    centaur.shoot
    centaur.run
    centaur.shoot

    expect(centaur.cranky?).to eq(true)

    centaur.lay_down
    centaur.sleep

    expect(centaur.cranky?).to eq(false)

    centaur.stand_up

    expect(centaur.shoot).to eq("Twang!!!")
    expect(centaur.run).to eq("Clop clop clop clop!!!")
  end
end
