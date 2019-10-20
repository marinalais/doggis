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

class AppointmentItem < ApplicationRecord
  belongs_to :petservice
  belongs_to :appointment
end
