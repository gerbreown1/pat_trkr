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
attr_accessor :lname, :fname
has_secure_password
validates :lname, presence: true
validates :fname, presence: true
validates :username, presence: true
validates :password, presence: true
validates :password, length: { minimum: 6}
validates :password_confirmation, presence: true

has_many :assignments
has_many :roles, :through => :assignments

def can?(action, resource)
    roles.includes(:rights).for(action, resource).any?
end
end
