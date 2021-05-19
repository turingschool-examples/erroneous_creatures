require './lib/hobbit'

RSpec.describe Hobbit do
  it "has a name" do
    hobbit = Hobbit.new("Bilbo")

    expect(hobbit.name).to eq("Bilbo")
  end

  it "is named something else" do
    hobbit = Hobbit.new("Peregrin")

    expect(hobbit.name).to eq("Peregrin")
  end

  it "disposition is unadventurous" do
    hobbit = Hobbit.new("Samwise")

    expect(hobbit.disposition).to eq("homebody")
  end

  it "can have a different disposition" do
    hobbit = Hobbit.new("Frodo", "adventurous")

    expect(hobbit.disposition).to eq("adventurous")
  end

  it "grows older when celebrating birthdays" do
    hobbit = Hobbit.new('Meriadoc')

    expect(hobbit.age).to eq(0)

    5.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.age).to eq(5)
  end

  it "is considered a child at 32" do
    hobbit = Hobbit.new('Gerontius')

    32.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to eq(false)
  end

  it "comes of age at 33" do
    hobbit = Hobbit.new('Otho')

    33.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to eq(true)

    # still adult, one year later
    hobbit.celebrate_birthday

    expect(hobbit.adult?).to eq(true)
  end

  it "can only play games if a child" do
    hobbit = Hobbit.new('Otho')

    32.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.play).to eq(true)
  end

  it "can get tired if play 3times" do
    hobbit = Hobbit.new('Otho')

    3.times do
      hobbit.play
    end

    expect(hobbit.tired?).to eq(true)
  end
end
