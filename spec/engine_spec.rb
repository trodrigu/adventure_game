require './logic'

RSpec.describe Engine, "#engine" do
  describe "the engine" do
    let(:new_map) { Map.new(1) }
    let(:new_game) { Engine.new(new_map) }
    let(:new_level) { LevelOne.new }

    context "starts up map" do

      it "has an instance of a map" do
        expect( new_game.map ).to be_an_instance_of(Map)
      end

      it "has a hash of lessons" do
        expect( Engine::LESSONS.class ).to be Hash
      end

      it "can turn a level class name into a number" do
        expect( Engine.level_to_key new_level ).to eq "One"
      end

      it "can turn a number string into an integer" do
        expect( Engine.num_word_to_string "One" ).to eq 0
      end

    end
  end
end
