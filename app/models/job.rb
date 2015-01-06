class Job < ActiveRecord::Base
  validates :company_name, :link, :title, :location, :status, :note, :contact_name, :contact_number, :intrigue_level, presence: true
end
