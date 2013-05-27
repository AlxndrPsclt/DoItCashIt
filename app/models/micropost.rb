# == Schema Information
#
# Table name: microposts
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  user_id    :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Micropost < ActiveRecord::Base
	belongs_to :user
	attr_accessible :content, :status, :user_id
	validates :content, length: { maximum: 50 }
	validates :user_id, presence: true

end
