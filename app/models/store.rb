# == Schema Information
#
# Table name: stores
#
#  id           :integer          not null, primary key
#  address      :string
#  name         :string
#  phone_number :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Store < ApplicationRecord
  # has_many(:inventory, {
  #   :through => :stocks,
  #   :source => :items
  # })
end
