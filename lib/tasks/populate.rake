namespace :db do
  desc "erase and fill database"
  task :populate => :environment do
    
    [NewsItem, User].each(&:delete_all)
    User.create!(:email => "admin@ad.com",
                 :password => "000000")
  end
end