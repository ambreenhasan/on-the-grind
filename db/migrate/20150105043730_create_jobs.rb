class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :link
      t.string :job_title
      t.string :location
      t.string :status
      t.text :note
      t.string :contact_email
      t.integer :intrigue_level, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
