# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  description    :text
#  quantity       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("BRL"), not null
#
class Product < ApplicationRecord
  monetize :price_cents
end
