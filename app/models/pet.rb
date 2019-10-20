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
#  customer_id  :integer
#  allergy      :boolean
#

class Pet < ApplicationRecord

	enum pettype: [:cat, :dog, :rabbit, :another]
	enum petsize: [:small, :medium, :big]

end
