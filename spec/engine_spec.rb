require './logic'

RSpec.describe Engine, "#engine" do
  describe "the engine" do
    let(:new_map) { Map.new(1) }
    let(:new_game) { Engine.new(new_map) }

    context "starts up map" do

      it "has an instance of a map" do
        expect( new_game.map ).to be_an_instance_of(Map)
      end
    end
  end
end
