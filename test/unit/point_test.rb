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
#

require 'test_helper'

class PointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
