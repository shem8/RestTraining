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

require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'validations' do

    it "has a valid factory" do
      FactoryGirl.build(:restaurant).should be_valid
    end

    it "is invalid without a name" do
      FactoryGirl.build(:restaurant, name: nil).should_not be_valid

    end
    it "is invalid without a rating between 0 to 3" do
      FactoryGirl.build(:restaurant, rating: 5).should_not be_valid
    end
  end
end
