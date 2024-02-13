# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  description    :text
#  available      :boolean          default(TRUE)
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("BRL"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Product < ApplicationRecord
  monetize :price_cents
end
