require './game'

RSpec.describe Map, "#map" do
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
