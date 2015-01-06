FactoryGirl.define do
  factory :job do
   company_name "Blue Bottle"
   link "https://bluebottlecoffee.com/careers"
   title "Software Engineer"
   location "Oakland, CA"
   status "Haven't Applied Yet"
   note "RSpec challenge on github"
   contact_name "N/A"
   contact_number "N/A"
   intrigue_level 10
  end
end
