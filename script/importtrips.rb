require 'csv'
ActiveRecord::Base.transaction do
  CSV.open('script/trips.csv', 'r').each do |row|
    Trip.create(name: row[0], route: row[1])
  end
end
