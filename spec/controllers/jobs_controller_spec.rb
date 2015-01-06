require 'rails_helper'

RSpec.describe JobsController, :type => :controller do
  context "#index" do
    it "loads all jobs into @jobs" do
      get :index
      expect(assigns(:jobs)).to eq Job.all
    end
  end

  context "#new" do
    it "assigns @job to Job.new" do
      get :new
      expect(assigns(:job)).to be_a_new(Job)
    end
    it "renders the new template" do
      get :new
      expect(response).to render_template "new"
    end
  end

  context "#create" do
    it "with valid params" do
      expect {
        post :create, :job => FactoryGirl.attributes_for(:job)
        expect(response).to be_redirect
      }.to change { Job.count }.by(1)
    end

    it "with invalid params" do
      expect {
        post :create, :job => {company_name: "hello", title: ""}
        expect(response).to_not be_redirect
      }.to_not change { Job.count }
    end
  end

  context "#show" do
    it "finds a job by id" do
      job = FactoryGirl.create(:job)
      get :show, id: job.id
      expect(assigns(:job)).to eq job
    end
  end

  context "#edit" do
     it "edits a job by id" do
      job = FactoryGirl.create(:job)
      get :edit, id: job.id
      expect(assigns(:job)).to eq job
    end
  end

  context "#update" do
    it "with valid params" do
      job = FactoryGirl.create(:job)
      patch :update, id: job.id, job: {title: "Front End Developer"}
      expect(assigns(:job)).to eq job
    end

    it "with invalid params" do
      job = FactoryGirl.create(:job)
      patch :update, id: job.id, job: {tile: ""}
       expect(response).to render_template "edit"
    end
  end

  context "#destroy" do
    it "assigns a job to Job.find(params[:id])" do
      job = FactoryGirl.create(:job)
      delete :destroy, id: job.id
      expect(assigns(:job)).to eq job
    end

    it "destroys a poem" do
      job = FactoryGirl.create(:job)
      delete :destroy, id: job.id
      expect(Job.all).to_not include job
    end

    it "redirects to the root_path when successfully destroyed" do
       job = FactoryGirl.create(:job)
       delete :destroy, id: job.id
       expect(response).to be_redirect
    end
  end
end

