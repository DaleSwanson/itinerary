# == Schema Information
#
# Table name: points
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  state      :string(255)
#  hike       :integer
#  lat        :float
#  long       :float
#  height     :integer
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  distance   :float
#  short_name :string(255)
#

class Point < ActiveRecord::Base
  attr_accessible :height, :hike, :lat, :long, :name, :state, :type, :distance, :short_name
end
