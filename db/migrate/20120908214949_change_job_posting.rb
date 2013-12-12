class ChangeJobPosting < ActiveRecord::Migration
  def change
    add_column :job_postings, :position, :string
    add_column :job_postings, :application_instruction, :string
    add_column :job_postings, :expiration_date, :date
    add_column :job_postings, :job_description, :string
    add_column :job_postings, :qualifications, :string
    add_column :job_postings, :job_category, :string
    remove_column :job_postings, :title, :string
    remove_column :job_postings, :content, :string

  end
end
