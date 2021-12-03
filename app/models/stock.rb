# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer
#  store_id   :integer
#
class Stock < ApplicationRecord
  # belongs_to(:the_store, {
  #   :class_name => "Store",
  #   :foreign_key => "store_id"
  # })
  # belongs_to(:item, {
  #   :class_name => "Item",
  #   :foreign_key => "item_id"
  # })
end
