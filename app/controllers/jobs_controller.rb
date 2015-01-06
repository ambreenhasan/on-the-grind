class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @job = Job.new
  end
end
