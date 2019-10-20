# == Schema Information
#
# Table name: pet_services
#
#  id               :integer          not null, primary key
#  duration         :integer
#  price            :decimal(, )
#  name             :string
#  description      :string
#  pataz_value_free :decimal(, )
#  pataz_amount     :decimal(, )
#  user_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class PetServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
