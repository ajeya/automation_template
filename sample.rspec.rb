require "spec_helper.rb"
require "rubygems"
require "faker"

Capybara.default_driver = :selenium
Capybara.app_host = ""

describe 'Goto' do
  before (:each)  do
    visit "/admin"
    fill_in "username", with: ""
    fill_in "password", with: ""
    click_button "Login"
  end

  it "should be able to create a new product" do
    # The following line produces an ambiguous match.
    # click_link "Products" 
    # And the solution for that is
    first(:link, 'Products').click
    click_link "Add a Product"
    page.should have_content "Add a Product"

    product_name = Faker::Lorem.characters(15)
    fill_in "product-name", with: product_name
    fill_in "product-url", with: "/#{product_name}"
    first(:link, 'Shop iPhone').click
    fill_in "product-price", with: "10.20"
    fill_in "product-weight", with: "20"
    click_button "Save & Exit"

    sleep 2
    
    within "#physical-dimensions-modal" do
      click_button "Continue"
    end
    

    page.should have_content "The new product has been added successfully."
  end


end
