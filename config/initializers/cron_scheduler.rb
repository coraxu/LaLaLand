require 'rufus-scheduler'

scheduler = Rufus::Scheduler.singleton

scheduler.every '5m' do
  puts "updating articles..."
  Article.updateArticles
  puts "Updated Articles Successfully!"
end
