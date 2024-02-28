RSpec.describe Product, type: :model do
  it { is_expected.to monetize(:price_cents) }

  context "valid Factory" do
    it "has a valid factory" do
      expect(build(:product)).to be_valid
    end
  end

  context "validations" do
    context "presence" do
      it { is_expected.to validate_presence_of(:name) }
    end

    context "uniqueness" do
      subject { create(:product) }

      it { is_expected.to validate_uniqueness_of(:name) }
    end
  end
end
