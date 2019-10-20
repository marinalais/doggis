# == Schema Information
#
# Table name: stocks
#
#  id             :integer          not null, primary key
#  stockoperation :integer
#  description    :string
#  quantity       :decimal(, )
#  operationdate  :datetime
#  product_id     :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Stock < ApplicationRecord
  belongs_to :product
  enum stockoperation: [:debit, :credit]

end
