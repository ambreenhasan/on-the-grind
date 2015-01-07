class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.all
    @job = Job.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    redirect_to root_path if @job.save
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    @job.update(job_params) ? (redirect_to root_path) : (render 'edit')
  end

  def destroy
    @job = Job.find(params[:id])
    redirect_to root_path if @job.destroy
  end

  private
  def job_params
    params.require(:job).permit(:company_name, :link, :title, :location, :status, :note, :contact_name, :contact_number, :intrigue_level)
  end
end


