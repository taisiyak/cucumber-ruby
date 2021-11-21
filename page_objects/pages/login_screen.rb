class LoginScreen < SitePrism::Page
  set_url "http://192.168.88.174/login"

  element :user_name_field, '#username'
  element :password_field, '#password'
  element :submit_btn, '#login-submit'
end