# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  lname      :string(255)
#  fname      :string(255)
#  DOB        :date
#  address    :string(255)
#  city       :string(255)
#  prov       :string(255)
#  gender     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Patient < ActiveRecord::Base
end
