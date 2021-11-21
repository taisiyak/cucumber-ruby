class RegisterScreen < SitePrism::Page
  set_url "http://192.168.88.174/account/register"

  element :user_login, '#user_login'
  element :user_password, '#user_password'
  element :user_password_confirmation, '#user_password_confirmation'
  element :user_firstname, '#user_firstname'
  element :user_lastname, '#user_lastname'
  element :user_mail, '#user_mail'
  element :submit_btn_register, :xpath, '//*[@id="new_user"]/input[3]'
end