require 'csv'
ActiveRecord::Base.transaction do
  CSV.open('script/citiestohps.csv', 'r').each do |row|
    Pair.create(from_id: row[1], to_id: row[0], distance: row[3], time: row[2])
  end
end
