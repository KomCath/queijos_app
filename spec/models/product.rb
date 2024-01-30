require "rails_helper"

RSpec.describe Product, type: :model do
  it { is_expected.to monetize(:price_cents) }

end