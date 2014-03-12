require 'character'

describe Character do
  subject do
    Character.new("Test Char", "Good")
  end

  context "when created" do
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

    context "with bad initial values" do
      it "validates improper alignment" do
        expect { Character.new("Test Char" "Durp") }.to raise_error(ArgumentError)
      end

      it "validates a missing name" do
        expect { Character.new("", "Good") }.to raise_error(ArgumentError)
      end
    end
  end

  context "in combat" do
    it "can attack"
    it "can be damaged"

    context "can gain experience when attacking" do
      it "and gains 10xp when a successful attack occurs"
      end
    end

  context "has attributes" do
    it "that are tracked by scores"

    context "that can be modified by Ability Modifiers" do
      context "like the strength modifier" do
        it "which modifies damage on attack rolls"
        it "which doubles strength on critical hits"
        it "which makes minimum damage 1 hit point"
      end

      context "like the dexterity modifier" do
        it "which modifies armor class"
      end

      context "like the constitution modifier" do
        it "which modifies hit points"
        it "which adds at least 1 hit point"
      end
    end
  end

  context "has levels" do
    it "that default to 1"
    it "that increment every 1000xp"

    context "that increase attributes each level" do
      it "like hit points by (5 + Con modifier)"
      it "like attack roll by 1"
    end
  end
end
