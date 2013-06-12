# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  lname      :string(255)
#  fname      :string(255)
#  username   :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
attr_accessible :lname, :fname
validates :lname, :fname, :username, :password, :password_confirmation, presence: true
has_secure_password
belongs_to :roles
end
