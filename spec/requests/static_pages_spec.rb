require 'spec_helper'

describe "Static pages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have a title containing 'Home'" do
    	visit '/static_pages/home'  
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App | Home")
    end
  
	end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

  	it "should have a title containing 'Help'" do
    	visit '/static_pages/help' 
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About Us Page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

  	it "should have a title containing 'About Us'" do
    	visit '/static_pages/about' 
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App | About Us")
    end

  end

  describe "CJ's Test Page" do
  	it "should have the content 'CJ's Test'" do
  		visit '/static_pages/cjtest'
  		page.should	have_content('CJ\'s Test')
  	end

  	it "should have a title containing 'CJ's Test'" do
    	visit '/static_pages/cjtest' 
    	page.should have_selector('title',
    		:text => "Ruby on Rails Tutorial Sample App | CJ's Test")
    end

  end

end


