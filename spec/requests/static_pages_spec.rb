require 'spec_helper'

# let(:prefix) {"Ruby on Rails Tutorial Sample App | "}
# prefix = "Ruby on Rails Tutorial Sample App | "

describe "StaticPages" do
  let(:prefix) {"Ruby on Rails Tutorial Sample App | "}
      
  describe "Home page" do
    it "should have the content 'Home Page'" do
      visit '/static_pages/home'
      page.should have_content('Home Page')
    end
    it "should have right title" do
      visit '/static_pages/home'
      page.should have_title("#{prefix}Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{prefix}Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{prefix}About Us")
    end
  end
  
  
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
  end
end
