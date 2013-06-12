module HomeHelper
  def account_menu
    if user_signed_in?
      "#{t('navigation.home.account')} (#{current_user.name})"
    else
      t('navigation.home.account')
    end
  end
end
