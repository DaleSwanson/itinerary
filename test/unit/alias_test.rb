# == Schema Information
#
# Table name: aliases
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  point_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AliasTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
