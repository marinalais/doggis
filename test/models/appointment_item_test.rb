# == Schema Information
#
# Table name: appointment_items
#
#  id             :integer          not null, primary key
#  petservice_id  :integer          not null
#  appointment_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class AppointmentItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
