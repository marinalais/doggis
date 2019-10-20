# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  orderdate    :datetime
#  totalvalue   :decimal(, )
#  orderitem_id :integer          not null
#  user_id      :integer          not null
#  customer_id  :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :orderitem
  belongs_to :user
  belongs_to :customer
end
