# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  quantity   :decimal(, )
#  value      :decimal(, )
#  product_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#

class OrderItem < ApplicationRecord
  #belongs_to :product
  #belongs_to :order
end
