# == Schema Information
#
# Table name: grants
#
#  id         :integer          not null, primary key
#  right_id   :integer
#  role_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Grant < ActiveRecord::Base
belongs_to :role
belongs_to :right
end
