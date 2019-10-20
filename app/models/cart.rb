# == Schema Information
#
# Table name: carts
#
#  id             :integer          not null, primary key
#  totalvalue     :decimal(, )
#  order_id       :integer          not null
#  appointment_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Cart < ApplicationRecord
  belongs_to :order
  belongs_to :appointment
end
