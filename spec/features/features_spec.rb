require 'rails_helper'

feature "User visits the homepage" do
  scenario 'and is able to see a list of all job listings' do
    visit root_path
    expect(page).to have_content "All job listings"
  end
  scenario 'and click a link to create a new job listing' do
    visit root_path
    click_on "Add job"
  end
end

feature "User can create a new job listing" do
  # let!(:job) {}
  scenario "And fill out the form with valid params" do
  end
end

feature "User can edit a job listing" do
end

feature "User can delete a job listing" do
end

feature "User can sign in" do
  scenario "and add a job to their list" do
  end
  scenario "and see a list of jobs they have added" do
  end
end

# User visits the homepage and is able to sign in