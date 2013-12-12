class AddLocationToJobPostings < ActiveRecord::Migration
  def change
    add_column :job_postings, :location, :string

  end
end
