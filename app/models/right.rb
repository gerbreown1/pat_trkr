# == Schema Information
#
# Table name: rights
#
#  id         :integer          not null, primary key
#  resource   :string(255)
#  operation  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Right < ActiveRecord::Base
has_many :grants
has_many :roles, :through => grants
OPERATION_MAPPINGS = {
    "new" => "CREATE",
    "create" => "CREATE",
    "edit" => "UPDATE",
    "update" => "UPDATE",
    "destroy" => "DELETE",
    "show" => "READ",
    "index" => "READ"
}
end
