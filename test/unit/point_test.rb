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
#  hp         :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  distance   :float
#  short_name :string(255)
#

require 'test_helper'

class PointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
