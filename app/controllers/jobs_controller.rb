class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.all.order(created_at: :desc)
    @job = Job.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to jobs_path, notice: 'job was successfully created.' }
        format.json { render json: @job, status: :created }
        format.js   {}
      else
        format.html { render "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
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
    params.require(:job).permit(:company_name, :link, :job_title, :location, :status, :note, :contact_email, :intrigue_level)
  end
end


