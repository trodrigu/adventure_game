require './logic'

RSpec.describe Map, "#map" do
  describe "the map" do
    let(:new_map) { Map.new(1) }

    context "entering a scene in the map" do

      it "is a map" do
        expect(new_map).to be_an_instance_of(Map)
      end

      it "can enter the first level" do
        expect(Engine::LESSONS.fetch(1)).to be_an_instance_of(LevelTwo)
      end

      it "can exit the scene and increment key" do
        expect{ new_map.exit_scene }.to change{ new_map.scene }. by 1
      end
    end

    context "stores levels" do
      it "has a number of levels" do
        expect( Engine::LESSONS.length ).to eq 5
      end
    end

    context "lose level" do
      it "can get the level" do
        expect( new_map.get_next_scene ).to be_an_instance_of(Lose)
      end
    end
  end
end
