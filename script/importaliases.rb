require 'csv'
ActiveRecord::Base.transaction do
  CSV.open('script/citiesabv.csv', 'r').each do |row|
    Alias.create(name: row[0], point_id: row[1])
  end
end
