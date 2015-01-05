require 'rails_helper'

RSpec.describe JobsController, :type => :controller do
  describe "A user can" do
    it "visit the home page and view all jobs" do
      visit jobs_path
      page.should have_content "All job listings"
    end
    it "add a job to the list" do
    end
    it "edit a job" do
    end
    it "update a job they created" do
    end
    it "delete a job" do
    end
  end
end

