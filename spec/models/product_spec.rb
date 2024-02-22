RSpec.describe Product, type: :model do
  it { is_expected.to monetize(:price_cents) }

  context "valid Factory" do
    it "has a valid factory" do
      expect(build(:product)).to be_valid
    end
  end
end