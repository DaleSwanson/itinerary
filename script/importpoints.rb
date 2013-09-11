require 'csv'
CSV.open('script/hps.csv', 'r').each do |row|
	Point.create(state: row[0], name: row[1], height: row[2], distance: row[3], lat: row[4], long: row[5])
end

#"Alaska","Mount McKinley",20320,23,63.06944444,-151.00361111
