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

require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
