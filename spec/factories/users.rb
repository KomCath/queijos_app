# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE), not null
#  first_name             :string           default(""), not null
#  last_name              :string           default("")
#  phone_number           :string           default("")
#  line1                  :string
#  line2                  :string
#  neighborhood           :string
#  city                   :string
#  state                  :string
#  zip                    :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
FactoryBot.define do
  factory :user do
    
  end
end
