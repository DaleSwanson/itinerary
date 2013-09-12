# == Schema Information
#
# Table name: pairs
#
#  id         :integer          not null, primary key
#  from_id    :integer
#  to_id      :integer
#  time       :integer
#  distance   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PairTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
