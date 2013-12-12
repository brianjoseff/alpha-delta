class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
