require 'csv'
ActiveRecord::Base.transaction do
  CSV.open('script/cities.csv', 'r').each do |row|
    Point.create(name: row[0], state: row[1], lat: row[2], long: row[3], short_name: row[4], hp: 0)
  end
end
#"New York City","New York",40.67,-73.94,"NYC"
