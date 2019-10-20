# == Schema Information
#
# Table name: appointments
#
#  id              :integer          not null, primary key
#  appointmentdate :datetime
#  status          :integer
#  value           :decimal(, )
#  user_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
