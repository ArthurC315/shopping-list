# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :float
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Item < ApplicationRecord
  belongs_to(:user)
  validates :name, :presence => true
  validates :quantity, :presence => true
  
  # has_many(:stocks, :dependent => :destroy)
  # has_many(:stores_available, {
  #   :through => :stocks,
  #   :source => :store
  # })
  
end
