require './lib/centaur'

RSpec.describe Centaur do
  it "has a name" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.name).to eq("George")
  end

  xit "has a horse breed" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.breed).to eq("Palomino")
  end

  xit "has excellent bow skills" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.shoot).to eq("Twang!!!")
  end

  xit "makes a horse sound when it runs" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.run).to eq("Clop clop clop clop!!!")
  end

  xit "starts not cranky" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.cranky?).to eq(false)
  end

  xit "starts standing up" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.standing?).to eq(true)
  end

  xit "gets cranky after running or shooting a bow 3 times" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.cranky?).to eq(false)

    centaur.shoot
    centaur.run
    centaur.shoot

    expect(centaur.cranky?).to eq(true)
  end

  xit "will not shoot a bow when cranky" do
    centaur = Centaur.new("George","Palomino")

    3.times { centaur.shoot }

    expect(centaur.shoot).to eq("NO!")
  end

  xit "will not run when cranky" do
    centaur = Centaur.new("George","Palomino")

    3.times { centaur.shoot }

    expect(centaur.shoot).to eq("NO!")
  end

  xit "will not sleep when standing" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur.sleep).to eq("NO!")
  end

  xit "can lay down" do
    centaur = Centaur.new("George","Palomino")

    expect(centaur).to respond_to(:lay_down)
  end

  xit "is not standing after laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.standing?).to eq(false)
    expect(centaur.laying?).to eq(true)
  end

  xit "can sleep when laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.sleep).to eq("NO!")
  end

  xit "cannot shoot a bow when laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.shoot).to eq("NO!")
  end

  xit "cannot run when laying down" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down

    expect(centaur.run).to eq("NO!")
  end

  xit "can stand up" do
    centaur = Centaur.new("George","Palomino")

    centaur.lay_down
    centaur.stand_up

    expect(centaur.standing?).to eq(true)
  end

  xit "is no longer cranky after sleeping" do
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
