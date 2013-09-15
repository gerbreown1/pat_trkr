# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Role < ActiveRecord::Base
validates :name, presence: true, uniqueness: true

has_many :users, :through => :assignments
has_many :grants
has_many :assignments
# has_many :rights, through => :grants

scope :for, lambda{|action, resource|
              where("rights.operation = ? AND rights.resource = ?",
                  Right::OPERATION_MAPPINGS[action], resource
                  )
              }
end
