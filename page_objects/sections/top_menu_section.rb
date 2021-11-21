class TopMenu < SitePrism::Section
  element :sign_in_link, :xpath, '//*[@id="account"]/ul/li[1]/a'
  element :register_link, :xpath, '//*[@id="account"]/ul/li[2]/a'
end