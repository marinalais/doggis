# == Schema Information
#
# Table name: customers
#
#  id             :integer          not null, primary key
#  name           :string
#  identification :string
#  address        :string
#  email          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Customer < ApplicationRecord
end
