# == Schema Information
#
# Table name: restaurants
#
#  id            :integer          not null, primary key
#  name          :string
#  genre         :string
#  rating        :integer
#  accept_10bis  :boolean
#  address       :string
#  delivery_time :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :rating, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 3 }

end
