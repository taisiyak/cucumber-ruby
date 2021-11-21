class HomeScreen < SitePrism::Page
  set_url 'http://192.168.88.174'

  section :top_menu, TopMenu, '#top-menu'

  # element :sign_in_link, :xpath, '//*[@id="account"]/ul/li[1]/a'
end