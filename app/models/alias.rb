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

class Alias < ActiveRecord::Base
  attr_accessible :name, :point_id
end
