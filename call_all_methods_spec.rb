require 'RSpec'

RSpec.describe 'Call all methods' do

  def find(sector, symbol)
    @call_all_methods[sector][symbol]
  end

  describe 'of FixNum 1' do
    before(:each) do
     @call_all_methods = call_all_methods(1)
    end

    it 'finds its successor' do
      expect(find(:success, :succ)).to eq(2)
    end

    it "finds its oddity" do
      expect(find(:success, :odd?)).to eq(true)
    end
  end

  describe "of FixNum 1 with a parameter" do
    before(:each) do
      @call_all_methods = call_all_methods(1,1)
    end

    it "finds its successor" do
      expect(find(:error, :succ).is_a?(ArgumentError)).to be(true)
    end

    it "applies the sum" do
      expect(find(:success, :+)).to eq(2)
    end
    
  end
end
