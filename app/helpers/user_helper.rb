module UserHelper
  def user_root
    if current_user.is_a? Admin
      return '/admins'
    elsif current_user.is_a? Superadmin
      return '/superadmins'
    elsif current_user.is_a? Worker
      return '/workers'
    else
      return '/'
    end
  end
end
