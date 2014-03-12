require 'character'

describe Character do
  subject do
    Character.new("Test Char", "Good")
  end
  it "can get and set Name" do
    expect(subject.name).to eq("Test Char")
  end

  it "has an alignment" do
    expect(subject.alignment).to eq(:good)
  end
  
  it "has an initial armor class" do
    expect(subject.armor_class).to eq(10)
  end

  it "has default hit points" do
    expect(subject.hit_points).to eq(5)
  end

  context "bad initial values" do
    it "validates improper alignment" do
      expect { Character.new("Test Char" "Durp") }.to raise_error(ArgumentError)
    end
    
    it "validates a missing name" do
      expect { Character.new("", "Good") }.to raise_error(ArgumentError)
    end
  end

  describe "combat" do
    it "can attack" do
      
    end
  end
end
