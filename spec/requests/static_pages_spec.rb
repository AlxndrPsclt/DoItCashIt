require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    it "should have the content 'Do it Cash it'" do
      visit'/static_pages/home'
      page.should have_content('Do it Cash it')
    end
  end

  describe "Defis realises" do
    it "should have the content 'Défis réalisés'" do
      visit'/static_pages/defisrealises'
      page.should have_content('Défis réalisés')
    end
  end

  describe "Defis a realiser" do
    it "should have the content 'Défis à réaliser'" do
      visit '/static_pages/defisarealiser'
      page.should have_content('Défis à réaliser')
    end
  end
end
