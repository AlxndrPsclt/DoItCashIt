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

require 'spec_helper'

describe Parieur do
  pending "add some examples to (or delete) #{__FILE__}"
end
