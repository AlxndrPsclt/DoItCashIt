# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  name                         :string(255)
#  email                        :string(255)
#  jetons                       :integer
#  jetonsTotalDepuisInscription :integer
#  password_digest              :string(255)
#  dateDerniereConnection       :datetime
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class User < ActiveRecord::Base
	attr_accessible :dateDerniereConnection, :email, :jetons, :jetonsTotalDepuisInscription, :name, :password_digest

	validates :name, presence: true
	validates :email, presence: true
end
