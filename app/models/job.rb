class Job < ActiveRecord::Base
  validates :company_name, :link, :job_title, :location, :status, :note, :contact_email, :intrigue_level, presence: true
  belongs_to :user
end
