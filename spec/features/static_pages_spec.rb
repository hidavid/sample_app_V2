require 'rails_helper'

describe "Static pages" do

	let(:base_title) { "Ruby on Rails Sample App" }
  subject { page }

	describe "Home Page" do
      before { visit root_path }

      it { expect have_selector('h1', text: 'Sample App') }
 #     it "should have the h1 'Sample App'" do
 #         expect(page).to have_selector('h1', :text => 'Sample App')
 #     end
      it { should have_title("#{base_title}") }
 #     it "should have the title" do
 #   	  expect(page).to have_title("#{base_title}")
 #     end
      it { should_not have_title("| Home") }
 #     it "should not have a custom page title" do
 #       expect(page).not_to have_title("| Home")
 #     end
    end

    describe "Help page" do
      before { visit help_path }
    	it { expect have_selector('h1', text: 'Help') }
    	it { should have_title("#{base_title} | Help") }
    end

    describe "About page" do
      before { visit about_path }
		  it { should have_selector('h1', text: 'About') }
      it { should have_title("#{base_title} | About Us") }
  	end

  	describe "Contact page" do
      before { visit contact_path }
		  it { should have_selector('h1', text: 'Contact') }
    	it { should have_title("#{base_title} | Contact") }
  	end
end