require './logic'

RSpec.describe Map, "#map" do
  describe "the map" do
    let(:new_map) { Map.new(1) }

    context "entering a scene in the map" do

      it "is a map" do
        expect(new_map).to be_an_instance_of(Map)
      end

      it "can enter the first level" do
        expect(Map.map.fetch(1)).to be_an_instance_of(LevelOne)
      end

      it "can exit the scene and increment key" do
        expect{ new_map.exit_scene }.to change{ new_map.scene }. by 1
      end
    end

    context "map stores levels" do
      it "has a number of levels" do
        expect( Map.map.length ).to eq 3
      end
    end
  end
end
