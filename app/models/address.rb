# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  city_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Address < ActiveRecord::Base
belongs_to :city
end
