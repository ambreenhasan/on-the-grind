require 'rails_helper'

RSpec.describe JobsController, :type => :controller do
  describe "A user can" do
    it "visit the home page and see a list of jobs" do
      visit '/'
      expect(page).to have_content "All job listings"
    end
    it "create a job" do
      job = FactoryGirl.create(:job)
    end
    it "edit a job" do
    end
    it "update a job they created" do
    end
    it "delete a job" do
    end
  end
end

