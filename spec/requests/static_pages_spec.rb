require 'spec_helper'

# let(:prefix) {"Ruby on Rails Tutorial Sample App | "}
# prefix = "Ruby on Rails Tutorial Sample App | "

describe "StaticPages" do
  subject {page}
  
  shared_examples_for "all static pages" do
    it {should have_content(heading)}
    it {should have_title(full_title(page_title))}
  end
      
  describe "Home page" do
    before { visit root_path }
    let(:heading) {'Sample App'}
    let(:page_title) {''}
    
    it_should_behave_like "all static pages"
    it {should_not have_title('| Home')}
  end
  
  describe "Help page" do
    before { visit help_path }
    let(:heading) {'Help'}
    let(:page_title){'Help'}
  end
  
  describe "About page" do
    before { visit about_path }
    let (:heading) {'About Us'}
    let (:page_title) {'About Us'}
  end
  
   describe "Contact page" do
    before { visit contact_path }
    let (:heading) {'Contact'}
    let (:page_title) {'Contact'}
    it {should have_selector('h1', text: 'Contact')}
  end
  
  
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get root_path
      response.status.should be(200)
    end
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    page.should have_selector('a', text: 'Ruby on Rails Tutorial')
  end
end
