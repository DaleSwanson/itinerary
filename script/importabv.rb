require 'csv'
CSV.open('script/hpsabv.csv', 'r').each do |row|
	thisPoint = Point.where(state: row[0]).first;
	thisPoint.short_name = row[1];
	thisPoint.save;
end

