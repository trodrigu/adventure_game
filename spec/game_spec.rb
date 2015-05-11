require './game'

RSpec.describe Map, "#map" do
  before(:each) do
    # @new_map = Map.new
    # @new_engine = Engine.new(@new_map)
    @scene = Scene.new({
          1 => CentralCorridor.new,
          :death => Death.new
        })

  end
  context "the first scene" do
    it "enters" do
      expect(@scene.start_first_scene).to be_instance_of(CentralCorridor)
    end

    it "starts a battle with a Gothon" do
      pending
      @scene = CentralCorridor.new
      expect(@scene.gothon_fight).to eq()
    end
  end
end
