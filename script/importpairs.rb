require 'csv'
ActiveRecord::Base.transaction do
  CSV.open('script/tofromlist.csv', 'r').each do |row|
    Pair.create(from_id: row[0], to_id: row[1], distance: row[2], time: row[3])
  end
end
