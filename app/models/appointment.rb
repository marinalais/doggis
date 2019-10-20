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

class Appointment < ApplicationRecord
  belongs_to :user
  enum status: [:paid, :canceled, :waiting]
end
