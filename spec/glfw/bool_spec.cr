require "../spec_helper"

describe LibGLFW::Bool do
  describe ".new" do
    it "converts from a Bool" do
      LibGLFW::Bool.new(true).should eq(LibGLFW::Bool::True)
      LibGLFW::Bool.new(false).should eq(LibGLFW::Bool::False)
    end
  end

  describe "#to_bool" do
    it "converts to a Bool" do
      LibGLFW::Bool::True.to_bool.should eq(true)
      LibGLFW::Bool::False.to_bool.should eq(false)
    end
  end
end
