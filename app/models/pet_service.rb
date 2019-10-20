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

class PetService < ApplicationRecord
  belongs_to :user
end
