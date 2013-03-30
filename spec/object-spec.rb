require 'object-in/object'

describe Object do

  let(:array) { %w{yankee doodle doo} }

  describe "#in?" do

    context "with a valid array argument" do
      it "returns 'true' if the object is in the array" do
        #expect{ "yankee".in?(array) }.to return true
      end

      it "returns 'false' if the object is not in the array" do
        #expect{ "da".in?(array) }.to return false
      end
    end

    context "with an argument that is not an array" do
      it "raises a TypeError" do
        expect{ "something".in?("something else") }.to raise TypeError
      end
    end

  end

end