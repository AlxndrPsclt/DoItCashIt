# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  name                         :string(255)
#  email                        :string(255)
#  jetons                       :integer
#  jetonsTotalDepuisInscription :integer
#  dateDerniereConnection       :datetime
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  password_digest              :string(255)
#  remember_token               :string(255)
#  admin                        :boolean          default(FALSE)
#

class Challenger < User


	#add a challenge to a challenger
  def add_challenge

  end
end
