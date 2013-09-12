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

class Pair < ActiveRecord::Base
  attr_accessible :distance, :from_id, :time, :to_id
end
