# == Schema Information
#
# Table name: pets
#
#  id           :integer          not null, primary key
#  name         :string
#  breed        :string
#  pettype      :integer
#  petsize      :integer
#  description  :string
#  allows_photo :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  allergy      :
#  customer_id  :integer
#

require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
