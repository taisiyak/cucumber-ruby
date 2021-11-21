module FeatureHelper
  def login_admin
    @login_screen = LoginScreen.new
    @login_screen.load

    @login_screen.user_name_field.set 'tratata'
    @login_screen.password_field.set 'test123456'
    @login_screen.submit_btn.click
  end

  def login(user_name, password)
    @login_screen = LoginScreen.new
    @login_screen.load

    @login_screen.user_name_field.set user_name
    @login_screen.password_field.set password
    @login_screen.submit_btn.click
  end

  def register_time
    @register_screen = RegisterScreen.new
    @register_screen.load

    @register_screen.user_login.set 'memus' + Time.now.to_i.to_s
    @register_screen.user_password.set 'test123456'
    @register_screen.user_password_confirmation.set 'test123456'
    @register_screen.user_firstname.set 'name' + Time.now.to_i.to_s
    @register_screen.user_lastname.set 'surname' + Time.now.to_i.to_s
    @register_screen.user_mail.set 'memus' + Time.now.to_i.to_s + '@mem.me'
  end

  def register_hex
    @register_screen = RegisterScreen.new
    @register_screen.load

    @register_screen.user_login.set 'memus' + SecureRandom.hex(10)
    @register_screen.user_password.set 'test123456'
    @register_screen.user_password_confirmation.set 'test123456'
    @register_screen.user_firstname.set 'Name' + SecureRandom.hex(10)
    @register_screen.user_lastname.set 'Surname' + SecureRandom.hex(10)
    @register_screen.user_mail.set 'memus' + SecureRandom.hex(10) + '@mem.me'
  end
end