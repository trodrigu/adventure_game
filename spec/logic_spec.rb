require './logic'

RSpec.describe Map, "#map" do
  describe "the first scene" do
    context "entering" do
      it "is Level One" do
        #level_one = LevelOne.new
        expect(assigns(:start_scene)).to be(start_scene)
      end
    end
    context "playing" do
      it "recieves correct answer to separate a string as lowercase" do
        #level_one = LevelOne.new
        level_one.stub(:gets) { 'Split' }
        expect(response).to eq "split"
      end
    end
  end
end
