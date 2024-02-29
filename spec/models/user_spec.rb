RSpec.describe User, type: :model do
  context "valid Factory" do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end

  context "validations" do
    before { create(:user) }

    it { is_expected.to validate_length_of(:password).
         is_at_least(7).
         with_message("is too short (minimum is 7 characters)")
       }

    context "presence" do
      it { is_expected.to validate_presence_of(:email).
           on(:create).
           with_message("can't be blank")
         }

      it { is_expected.to validate_presence_of(:password).
         on(:create).
         with_message("can't be blank")
       }
    end

    context "uniqueness" do
      it { is_expected.to validate_uniqueness_of(:email).
           on(:create).
           with_message("has already been taken").
           ignoring_case_sensitivity
         }
    end
  end
end
