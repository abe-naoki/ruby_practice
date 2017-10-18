class AdminRoleAssign < ApplicationRecord
  belongs_to :admin_user
  belongs_to :admin_role

#  def display_name
#    self.admin_user_id
#  end
end
